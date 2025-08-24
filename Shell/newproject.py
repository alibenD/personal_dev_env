#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os
import sys
from os.path import exists


def createFileFromTemplate(template_file, target_file, replace_pairs):
    with open(template_file, 'r') as r_file:
        text_src = r_file.read()

        for key_word, replace_word in replace_pairs.items():
            text_src = text_src.replace(key_word, replace_word)

    with open(target_file, 'w') as w_file:
        w_file.write(text_src)

def createDependsXMLElement(dependencies):
    depends = dependencies.split(';')
    result = ""
    if len(depends) == 1 and depends[0] == "":
        return ""

    for depend in depends:
        result += f"    <depend>{depend}</depend>"
    return result

def createProject(project_name, dependencies):
    try:
        directories = [
            "cmake",
            os.path.join("include", project_name),
            "src",
            "test",
            "examples"
        ]
        for dir_path in directories:
            os.makedirs(os.path.join(project_name, dir_path), exist_ok = True)
            print(f"Create directory: {dir_path}")
        script_dir = os.path.dirname(os.path.abspath(__file__))

        createFileFromTemplate(f"{script_dir}/template/CMakeLists.txt.tpl", f"{project_name}/CMakeLists.txt", {"project_name": f'{project_name}'})
        createFileFromTemplate(f"{script_dir}/template/package.xml.tpl", f"{project_name}/package.xml", {"@name@": f"<name>{project_name}</name>", "@depend@": f"{createDependsXMLElement(dependencies)}"})
        createFileFromTemplate(f"{script_dir}/template/CPM.cmake", f"{project_name}/cmake/CPM.cmake", {})
        createFileFromTemplate(f"{script_dir}/template/dummy.hpp", f"{project_name}/include/{project_name}/dummy.hpp", {})
        createFileFromTemplate(f"{script_dir}/template/dummy.cc", f"{project_name}/src/dummy.cc", {"@project_name@": f"{project_name}"})
        createFileFromTemplate(f"{script_dir}/template/CMakeLists_bin.txt.tpl", f"{project_name}/examples/CMakeLists.txt", {})
        createFileFromTemplate(f"{script_dir}/template/example.cc", f"{project_name}/examples/example.cc", {})

    except Exception as e:
        print(f"Error: {str(e)}")
        sys.exit(1)

if __name__  == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python newproject.py <project_name> [dependencies]")
        sys.exit(1)
    project_name = sys.argv[1]
    dependencies = ""
    if len(sys.argv) == 3:
        dependencies = sys.argv[2]
    createProject(project_name, dependencies)