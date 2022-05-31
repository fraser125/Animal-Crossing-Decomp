lbl_8042DC88:
/* 8042DC88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8042DC8C  7C 08 02 A6 */	mflr r0
/* 8042DC90  90 01 00 34 */	stw r0, 0x34(r1)
/* 8042DC94  39 61 00 30 */	addi r11, r1, 0x30
/* 8042DC98  4B C6 D2 3D */	bl func_8009AED4
/* 8042DC9C  7C 9D 23 78 */	mr r29, r4
/* 8042DCA0  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 8042DCA4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8042DCA8  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8042DCAC  83 DD 00 00 */	lwz r30, 0(r29)
/* 8042DCB0  AB E3 00 DE */	lha r31, 0xde(r3)
/* 8042DCB4  90 A1 00 08 */	stw r5, 8(r1)
/* 8042DCB8  7F C3 F3 78 */	mr r3, r30
/* 8042DCBC  90 81 00 0C */	stw r4, 0xc(r1)
/* 8042DCC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8042DCC4  4B FB 74 45 */	bl _texture_z_light_fog_prim
/* 8042DCC8  C0 21 00 08 */	lfs f1, 8(r1)
/* 8042DCCC  38 60 00 00 */	li r3, 0
/* 8042DCD0  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8042DCD4  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8042DCD8  4B FD E6 29 */	bl Matrix_translate
/* 8042DCDC  7F E3 FB 78 */	mr r3, r31
/* 8042DCE0  38 80 00 01 */	li r4, 1
/* 8042DCE4  4B FD E9 79 */	bl Matrix_RotateY
/* 8042DCE8  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 8042DCEC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8042DCF0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8042DCF4  38 7F 00 08 */	addi r3, r31, 8
/* 8042DCF8  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8042DCFC  90 1F 00 00 */	stw r0, 0(r31)
/* 8042DD00  80 7D 00 00 */	lwz r3, 0(r29)
/* 8042DD04  4B FD F6 D1 */	bl _Matrix_to_Mtx_new
/* 8042DD08  90 7F 00 04 */	stw r3, 4(r31)
/* 8042DD0C  3C 60 80 68 */	lis r3, mbg_model@ha /* 0x80684B30@ha */
/* 8042DD10  3C 80 DE 00 */	lis r4, 0xde00
/* 8042DD14  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 8042DD18  38 03 4B 30 */	addi r0, r3, mbg_model@l /* 0x80684B30@l */
/* 8042DD1C  38 65 00 08 */	addi r3, r5, 8
/* 8042DD20  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8042DD24  90 85 00 00 */	stw r4, 0(r5)
/* 8042DD28  90 05 00 04 */	stw r0, 4(r5)
/* 8042DD2C  39 61 00 30 */	addi r11, r1, 0x30
/* 8042DD30  4B C6 D1 F1 */	bl func_8009AF20
/* 8042DD34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8042DD38  7C 08 03 A6 */	mtlr r0
/* 8042DD3C  38 21 00 30 */	addi r1, r1, 0x30
/* 8042DD40  4E 80 00 20 */	blr 
