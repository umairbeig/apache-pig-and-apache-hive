REGISTER '/path/to/jar/file';

DEFINE RandomProjectTool org.example.GroupId();

students = LOAD '/home/umair/a2pa/sample.txt' USING PigStorage('\t') AS (name:chararray, rollnumber:chararray, email:chararray, groupid:chararray);

grouped_students = GROUP students BY groupid;

students_with_project_tool = FOREACH grouped_students {
    project_tool = RandomProjectTool();
    GENERATE FLATTEN(students), project_tool AS project_tool;
}

DUMP students_with_project_tool;

STORE students_with_project_tool INTO '/output/problem-A-2-2' USING PigStorage();
