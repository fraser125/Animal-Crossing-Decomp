lbl_80465CC4:
/* 80465CC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80465CC8  7C 08 02 A6 */	mflr r0
/* 80465CCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80465CD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80465CD4  4B C3 51 F9 */	bl func_8009AECC
/* 80465CD8  7C 9F 23 78 */	mr r31, r4
/* 80465CDC  7C 7E 1B 78 */	mr r30, r3
/* 80465CE0  80 64 00 00 */	lwz r3, 0(r4)
/* 80465CE4  4B F7 F4 25 */	bl _texture_z_light_fog_prim
/* 80465CE8  83 9F 00 00 */	lwz r28, 0(r31)
/* 80465CEC  38 60 00 00 */	li r3, 0
/* 80465CF0  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80465CF4  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 80465CF8  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 80465CFC  4B FA 66 05 */	bl Matrix_translate
/* 80465D00  A8 BE 00 6C */	lha r5, 0x6c(r30)
/* 80465D04  38 60 00 00 */	li r3, 0
/* 80465D08  38 80 00 00 */	li r4, 0
/* 80465D0C  38 C0 00 01 */	li r6, 1
/* 80465D10  4B FA 6C 85 */	bl Matrix_rotateXYZ
/* 80465D14  A8 7E 00 74 */	lha r3, 0x74(r30)
/* 80465D18  38 80 00 00 */	li r4, 0
/* 80465D1C  38 A0 00 00 */	li r5, 0
/* 80465D20  38 C0 00 01 */	li r6, 1
/* 80465D24  4B FA 6C 71 */	bl Matrix_rotateXYZ
/* 80465D28  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80465D2C  38 60 00 01 */	li r3, 1
/* 80465D30  FC 40 08 90 */	fmr f2, f1
/* 80465D34  FC 60 08 90 */	fmr f3, f1
/* 80465D38  4B FA 66 B5 */	bl Matrix_scale
/* 80465D3C  38 60 40 00 */	li r3, 0x4000
/* 80465D40  38 80 00 00 */	li r4, 0
/* 80465D44  38 A0 80 00 */	li r5, -32768
/* 80465D48  38 C0 00 01 */	li r6, 1
/* 80465D4C  4B FA 6C 49 */	bl Matrix_rotateXYZ
/* 80465D50  83 BC 02 D0 */	lwz r29, 0x2d0(r28)
/* 80465D54  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80465D58  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80465D5C  38 7D 00 08 */	addi r3, r29, 8
/* 80465D60  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 80465D64  90 1D 00 00 */	stw r0, 0(r29)
/* 80465D68  80 7F 00 00 */	lwz r3, 0(r31)
/* 80465D6C  4B FA 76 69 */	bl _Matrix_to_Mtx_new
/* 80465D70  90 7D 00 04 */	stw r3, 4(r29)
/* 80465D74  3C 80 01 00 */	lis r4, 0x0100 /* 0x00FF9BFF@ha */
/* 80465D78  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 80465D7C  3C C0 FB 00 */	lis r6, 0xfb00
/* 80465D80  80 FC 02 D0 */	lwz r7, 0x2d0(r28)
/* 80465D84  38 84 9B FF */	addi r4, r4, 0x9BFF /* 0x00FF9BFF@l */
/* 80465D88  3C 00 DE 00 */	lis r0, 0xde00
/* 80465D8C  38 63 65 4C */	addi r3, r3, minsect_mdl@l /* 0x8068654C@l */
/* 80465D90  38 A7 00 08 */	addi r5, r7, 8
/* 80465D94  90 BC 02 D0 */	stw r5, 0x2d0(r28)
/* 80465D98  90 C7 00 00 */	stw r6, 0(r7)
/* 80465D9C  90 87 00 04 */	stw r4, 4(r7)
/* 80465DA0  80 BC 02 D0 */	lwz r5, 0x2d0(r28)
/* 80465DA4  38 85 00 08 */	addi r4, r5, 8
/* 80465DA8  90 9C 02 D0 */	stw r4, 0x2d0(r28)
/* 80465DAC  90 05 00 00 */	stw r0, 0(r5)
/* 80465DB0  80 1E 00 00 */	lwz r0, 0(r30)
/* 80465DB4  54 00 10 3A */	slwi r0, r0, 2
/* 80465DB8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80465DBC  80 03 00 00 */	lwz r0, 0(r3)
/* 80465DC0  90 05 00 04 */	stw r0, 4(r5)
/* 80465DC4  80 1E 00 00 */	lwz r0, 0(r30)
/* 80465DC8  2C 00 00 08 */	cmpwi r0, 8
/* 80465DCC  40 82 00 6C */	bne lbl_80465E38
/* 80465DD0  83 9F 00 00 */	lwz r28, 0(r31)
/* 80465DD4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80465DD8  38 80 FF FF */	li r4, -1
/* 80465DDC  83 BC 02 E0 */	lwz r29, 0x2e0(r28)
/* 80465DE0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80465DE4  90 DD 00 00 */	stw r6, 0(r29)
/* 80465DE8  90 9D 00 04 */	stw r4, 4(r29)
/* 80465DEC  3B BD 00 08 */	addi r29, r29, 8
/* 80465DF0  7F BB EB 78 */	mr r27, r29
/* 80465DF4  90 1D 00 00 */	stw r0, 0(r29)
/* 80465DF8  3B BD 00 08 */	addi r29, r29, 8
/* 80465DFC  80 7F 00 00 */	lwz r3, 0(r31)
/* 80465E00  4B FA 75 D5 */	bl _Matrix_to_Mtx_new
/* 80465E04  90 7B 00 04 */	stw r3, 4(r27)
/* 80465E08  7F A4 EB 78 */	mr r4, r29
/* 80465E0C  3C 00 DE 00 */	lis r0, 0xde00
/* 80465E10  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 80465E14  90 1D 00 00 */	stw r0, 0(r29)
/* 80465E18  38 63 65 4C */	addi r3, r3, minsect_mdl@l /* 0x8068654C@l */
/* 80465E1C  3B BD 00 08 */	addi r29, r29, 8
/* 80465E20  80 1E 00 00 */	lwz r0, 0(r30)
/* 80465E24  54 00 10 3A */	slwi r0, r0, 2
/* 80465E28  7C 63 00 2E */	lwzx r3, r3, r0
/* 80465E2C  80 03 00 04 */	lwz r0, 4(r3)
/* 80465E30  90 04 00 04 */	stw r0, 4(r4)
/* 80465E34  93 BC 02 E0 */	stw r29, 0x2e0(r28)
lbl_80465E38:
/* 80465E38  39 61 00 20 */	addi r11, r1, 0x20
/* 80465E3C  4B C3 50 DD */	bl func_8009AF18
/* 80465E40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80465E44  7C 08 03 A6 */	mtlr r0
/* 80465E48  38 21 00 20 */	addi r1, r1, 0x20
/* 80465E4C  4E 80 00 20 */	blr 
