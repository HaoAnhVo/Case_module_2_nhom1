let selectedTags = [];

function addTag() {
    let select = document.getElementById('tags');
    let selectedTag = select.options[select.selectedIndex].text;
    let selectedTagId = select.value;

    let tagExists = selectedTags.find(tag => tag.id === selectedTagId);

    if (!tagExists) {
        selectedTags.push({ id: selectedTagId, name: selectedTag });
        updateTagList();
    } else {
        alert("Tag đã tồn tại trong danh sách.");
    }
}

function updateTagList() {
    let tagList = document.getElementById('tagList');
    tagList.innerHTML = ''; // Clear the existing list

    selectedTags.forEach(tag => {
        let tagItem = document.createElement('span');
        tagItem.innerText = tag.name;

        let removeButton = document.createElement('button');
        removeButton.innerText = 'X';
        removeButton.onclick = function() {
            removeTag(tag.id);
        };
        tagItem.appendChild(removeButton);
        tagList.appendChild(tagItem);

    });

    document.getElementById('selectedTagIds').value = selectedTags.map(tag => tag.id).join(',');
    console.log(selectedTags)
}

function removeTag(tagId) {
    selectedTags = selectedTags.filter(tag => tag.id !== tagId);
    updateTagList();
}