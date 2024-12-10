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
