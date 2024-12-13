document.addEventListener('DOMContentLoaded', () => {
    // ดึงทุกกลุ่มปุ่มที่มีคลาส .button-group
    const buttonGroups = document.querySelectorAll('.button-group');

    // เพิ่ม event listener ให้กับปุ่มในแต่ละกลุ่ม
    buttonGroups.forEach(group => {
        const buttons = group.querySelectorAll('button');
        
        buttons.forEach(button => {
            button.addEventListener('click', () => {
                // สลับการเลือกของปุ่มเมื่อคลิก
                button.classList.toggle('selected');
            });
        });
    });
});

function previewImages() {
    const preview = document.getElementById('image-preview');
    const files = document.getElementById('images').files;
    preview.innerHTML = ''; // Clear the preview before adding new images

    // ตรวจสอบว่าไฟล์มีหรือไม่
    if (files.length === 0) {
        preview.innerHTML = 'ไม่พบไฟล์ภาพ'; // ถ้าไม่มีไฟล์แสดงข้อความ
        return;
    }

    for (let i = 0; i < files.length; i++) {
        const file = files[i];

        // ตรวจสอบว่าเป็นไฟล์ภาพหรือไม่
        if (!file.type.startsWith('image/')) {
            alert('โปรดเลือกเฉพาะไฟล์ภาพ');
            continue;
        }

        const reader = new FileReader();

        reader.onload = function (e) {
            const img = document.createElement('img');
            img.src = e.target.result;
            preview.appendChild(img);
        };

        reader.readAsDataURL(file); // Convert file to base64 URL
    }
}
