lbl_806326AC:
/* 806326AC  81 65 00 00 */	lwz r11, 0(r5)
/* 806326B0  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 806326B4  3C 60 80 9F */	lis r3, obj_shop_manekin_model@ha /* 0x809EC370@ha */
/* 806326B8  38 A6 02 00 */	addi r5, r6, 0x200
/* 806326BC  81 4B 02 D0 */	lwz r10, 0x2d0(r11)
/* 806326C0  39 04 00 20 */	addi r8, r4, 0x0020 /* 0xDB060020@l */
/* 806326C4  38 E4 00 24 */	addi r7, r4, 0x24
/* 806326C8  3C 80 DE 00 */	lis r4, 0xde00
/* 806326CC  39 2A 00 08 */	addi r9, r10, 8
/* 806326D0  38 03 C3 70 */	addi r0, r3, obj_shop_manekin_model@l /* 0x809EC370@l */
/* 806326D4  91 2B 02 D0 */	stw r9, 0x2d0(r11)
/* 806326D8  91 0A 00 00 */	stw r8, 0(r10)
/* 806326DC  90 CA 00 04 */	stw r6, 4(r10)
/* 806326E0  80 CB 02 D0 */	lwz r6, 0x2d0(r11)
/* 806326E4  38 66 00 08 */	addi r3, r6, 8
/* 806326E8  90 6B 02 D0 */	stw r3, 0x2d0(r11)
/* 806326EC  90 E6 00 00 */	stw r7, 0(r6)
/* 806326F0  90 A6 00 04 */	stw r5, 4(r6)
/* 806326F4  80 AB 02 D0 */	lwz r5, 0x2d0(r11)
/* 806326F8  38 65 00 08 */	addi r3, r5, 8
/* 806326FC  90 6B 02 D0 */	stw r3, 0x2d0(r11)
/* 80632700  90 85 00 00 */	stw r4, 0(r5)
/* 80632704  90 05 00 04 */	stw r0, 4(r5)
/* 80632708  4E 80 00 20 */	blr 