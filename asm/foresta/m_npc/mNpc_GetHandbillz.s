lbl_803CD52C:
/* 803CD52C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803CD530  7C 08 02 A6 */	mflr r0
/* 803CD534  3D 20 81 17 */	lis r9, data_8116B378@ha /* 0x8116B378@ha */
/* 803CD538  39 80 00 28 */	li r12, 0x28
/* 803CD53C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803CD540  39 40 00 C0 */	li r10, 0xc0
/* 803CD544  38 00 00 30 */	li r0, 0x30
/* 803CD548  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 803CD54C  3B E9 B3 78 */	addi r31, r9, data_8116B378@l /* 0x8116B378@l */
/* 803CD550  93 C1 00 38 */	stw r30, 0x38(r1)
/* 803CD554  7C 7E 1B 78 */	mr r30, r3
/* 803CD558  3C 60 81 17 */	lis r3, tmp_ps_1274@ha /* 0x8116B3A0@ha */
/* 803CD55C  39 23 B3 A0 */	addi r9, r3, tmp_ps_1274@l /* 0x8116B3A0@l */
/* 803CD560  39 7E 00 4A */	addi r11, r30, 0x4a
/* 803CD564  93 E1 00 08 */	stw r31, 8(r1)
/* 803CD568  38 61 00 08 */	addi r3, r1, 8
/* 803CD56C  91 81 00 0C */	stw r12, 0xc(r1)
/* 803CD570  91 61 00 10 */	stw r11, 0x10(r1)
/* 803CD574  91 41 00 14 */	stw r10, 0x14(r1)
/* 803CD578  91 21 00 18 */	stw r9, 0x18(r1)
/* 803CD57C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803CD580  90 81 00 20 */	stw r4, 0x20(r1)
/* 803CD584  90 A1 00 24 */	stw r5, 0x24(r1)
/* 803CD588  90 C1 00 28 */	stw r6, 0x28(r1)
/* 803CD58C  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 803CD590  91 01 00 30 */	stw r8, 0x30(r1)
/* 803CD594  4B FE 57 95 */	bl mHandbillz_load
/* 803CD598  7C 7F 1B 78 */	mr r31, r3
/* 803CD59C  2C 1F 00 01 */	cmpwi r31, 1
/* 803CD5A0  40 82 00 34 */	bne lbl_803CD5D4
/* 803CD5A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CD5A8  3C 60 81 17 */	lis r3, data_8116B378@ha /* 0x8116B378@ha */
/* 803CD5AC  38 83 B3 78 */	addi r4, r3, data_8116B378@l /* 0x8116B378@l */
/* 803CD5B0  38 A0 00 18 */	li r5, 0x18
/* 803CD5B4  98 1E 00 2F */	stb r0, 0x2f(r30)
/* 803CD5B8  38 7E 00 32 */	addi r3, r30, 0x32
/* 803CD5BC  4B FE D4 69 */	bl func_803BAA24
/* 803CD5C0  3C 80 81 17 */	lis r4, tmp_ps_1274@ha /* 0x8116B3A0@ha */
/* 803CD5C4  38 7E 01 0A */	addi r3, r30, 0x10a
/* 803CD5C8  38 84 B3 A0 */	addi r4, r4, tmp_ps_1274@l /* 0x8116B3A0@l */
/* 803CD5CC  38 A0 00 20 */	li r5, 0x20
/* 803CD5D0  4B FE D4 55 */	bl func_803BAA24
lbl_803CD5D4:
/* 803CD5D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803CD5D8  7F E3 FB 78 */	mr r3, r31
/* 803CD5DC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 803CD5E0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 803CD5E4  7C 08 03 A6 */	mtlr r0
/* 803CD5E8  38 21 00 40 */	addi r1, r1, 0x40
/* 803CD5EC  4E 80 00 20 */	blr 
