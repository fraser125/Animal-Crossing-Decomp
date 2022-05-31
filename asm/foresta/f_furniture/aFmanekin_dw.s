lbl_8062ED50:
/* 8062ED50  81 65 00 00 */	lwz r11, 0(r5)
/* 8062ED54  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 8062ED58  3C 60 80 9F */	lis r3, obj_shop_manekin_model@ha /* 0x809EC370@ha */
/* 8062ED5C  38 A6 02 00 */	addi r5, r6, 0x200
/* 8062ED60  81 4B 02 D0 */	lwz r10, 0x2d0(r11)
/* 8062ED64  39 04 00 20 */	addi r8, r4, 0x0020 /* 0xDB060020@l */
/* 8062ED68  38 E4 00 24 */	addi r7, r4, 0x24
/* 8062ED6C  3C 80 DE 00 */	lis r4, 0xde00
/* 8062ED70  39 2A 00 08 */	addi r9, r10, 8
/* 8062ED74  38 03 C3 70 */	addi r0, r3, obj_shop_manekin_model@l /* 0x809EC370@l */
/* 8062ED78  91 2B 02 D0 */	stw r9, 0x2d0(r11)
/* 8062ED7C  91 0A 00 00 */	stw r8, 0(r10)
/* 8062ED80  90 CA 00 04 */	stw r6, 4(r10)
/* 8062ED84  80 CB 02 D0 */	lwz r6, 0x2d0(r11)
/* 8062ED88  38 66 00 08 */	addi r3, r6, 8
/* 8062ED8C  90 6B 02 D0 */	stw r3, 0x2d0(r11)
/* 8062ED90  90 E6 00 00 */	stw r7, 0(r6)
/* 8062ED94  90 A6 00 04 */	stw r5, 4(r6)
/* 8062ED98  80 AB 02 D0 */	lwz r5, 0x2d0(r11)
/* 8062ED9C  38 65 00 08 */	addi r3, r5, 8
/* 8062EDA0  90 6B 02 D0 */	stw r3, 0x2d0(r11)
/* 8062EDA4  90 85 00 00 */	stw r4, 0(r5)
/* 8062EDA8  90 05 00 04 */	stw r0, 4(r5)
/* 8062EDAC  4E 80 00 20 */	blr 
