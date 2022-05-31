lbl_805B430C:
/* 805B430C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B4310  7C 08 02 A6 */	mflr r0
/* 805B4314  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B4318  39 61 00 20 */	addi r11, r1, 0x20
/* 805B431C  4B AE 6B B9 */	bl func_8009AED4
/* 805B4320  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B4324  7C 9F 23 78 */	mr r31, r4
/* 805B4328  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B432C  83 A4 00 00 */	lwz r29, 0(r4)
/* 805B4330  3C 83 00 02 */	addis r4, r3, 2
/* 805B4334  38 60 00 49 */	li r3, 0x49
/* 805B4338  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805B433C  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805B4340  7D 89 03 A6 */	mtctr r12
/* 805B4344  4E 80 04 21 */	bctrl 
/* 805B4348  7F A3 EB 78 */	mr r3, r29
/* 805B434C  4B E5 90 89 */	bl _Matrix_to_Mtx_new
/* 805B4350  7C 7E 1B 79 */	or. r30, r3, r3
/* 805B4354  41 82 00 70 */	beq lbl_805B43C4
/* 805B4358  7F A3 EB 78 */	mr r3, r29
/* 805B435C  4B E3 0E 4D */	bl _texture_z_light_fog_prim_npc
/* 805B4360  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805B4364  80 FD 02 D0 */	lwz r7, 0x2d0(r29)
/* 805B4368  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805B436C  3C 80 80 6C */	lis r4, aMIK_shadow_data@ha /* 0x806C5B3C@ha */
/* 805B4370  90 07 00 00 */	stw r0, 0(r7)
/* 805B4374  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B4378  3C 00 DE 00 */	lis r0, 0xde00
/* 805B437C  3C A0 80 B9 */	lis r5, obj_e_mikuji_model@ha /* 0x80B8BD10@ha */
/* 805B4380  93 C7 00 04 */	stw r30, 4(r7)
/* 805B4384  38 E7 00 08 */	addi r7, r7, 8
/* 805B4388  7C E6 3B 78 */	mr r6, r7
/* 805B438C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B4390  90 07 00 00 */	stw r0, 0(r7)
/* 805B4394  38 05 BD 10 */	addi r0, r5, obj_e_mikuji_model@l /* 0x80B8BD10@l */
/* 805B4398  38 E7 00 08 */	addi r7, r7, 8
/* 805B439C  38 84 5B 3C */	addi r4, r4, aMIK_shadow_data@l /* 0x806C5B3C@l */
/* 805B43A0  90 06 00 04 */	stw r0, 4(r6)
/* 805B43A4  3C C3 00 02 */	addis r6, r3, 2
/* 805B43A8  7F E3 FB 78 */	mr r3, r31
/* 805B43AC  38 A0 00 00 */	li r5, 0
/* 805B43B0  90 FD 02 D0 */	stw r7, 0x2d0(r29)
/* 805B43B4  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 805B43B8  81 86 00 04 */	lwz r12, 4(r6)
/* 805B43BC  7D 89 03 A6 */	mtctr r12
/* 805B43C0  4E 80 04 21 */	bctrl 
lbl_805B43C4:
/* 805B43C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805B43C8  4B AE 6B 59 */	bl func_8009AF20
/* 805B43CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B43D0  7C 08 03 A6 */	mtlr r0
/* 805B43D4  38 21 00 20 */	addi r1, r1, 0x20
/* 805B43D8  4E 80 00 20 */	blr 
