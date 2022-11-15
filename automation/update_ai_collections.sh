
ai_post_dir="./ais/collections/"

for ai_i in $(ls -d -L ./_data/ai_collection/*/); do 
    ai_name=$(basename ${ai_i});
    if [ ! -d "${ai_post_dir}/${ai_name}/" ] 
    then
        echo "${ai_name} not found"
    else
        if [ -f "${ai_post_dir}/${ai_name}/index.md" ] 
        then
            echo "${ai_name} index found"
        else
            echo "${ai_name} index not found"
        fi
    fi
done;
