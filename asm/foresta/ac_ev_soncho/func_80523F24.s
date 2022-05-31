lbl_80523F24:
/* 80523F24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80523F28  7C 08 02 A6 */	mflr r0
/* 80523F2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80523F30  39 61 00 20 */	addi r11, r1, 0x20
/* 80523F34  4B B7 6F 9D */	bl func_8009AED0
/* 80523F38  7C 7F 1B 78 */	mr r31, r3
/* 80523F3C  7C 9C 23 78 */	mr r28, r4
/* 80523F40  38 60 00 71 */	li r3, 0x71
/* 80523F44  38 80 00 22 */	li r4, 0x22
/* 80523F48  4B E7 9E 85 */	bl mEv_get_save_area
/* 80523F4C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80523F50  7C 7E 1B 78 */	mr r30, r3
/* 80523F54  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80523F58  7F E3 FB 78 */	mr r3, r31
/* 80523F5C  3F A4 00 02 */	addis r29, r4, 2
/* 80523F60  7F 84 E3 78 */	mr r4, r28
/* 80523F64  80 BD 60 4C */	lwz r5, 0x604c(r29)
/* 80523F68  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 80523F6C  7D 89 03 A6 */	mtctr r12
/* 80523F70  4E 80 04 21 */	bctrl 
/* 80523F74  2C 03 00 01 */	cmpwi r3, 1
/* 80523F78  40 82 00 94 */	bne lbl_8052400C
/* 80523F7C  80 9D 60 4C */	lwz r4, 0x604c(r29)
/* 80523F80  3C 60 80 6A */	lis r3, ct_data@ha /* 0x806A0C5C@ha */
/* 80523F84  38 A3 0C 5C */	addi r5, r3, ct_data@l /* 0x806A0C5C@l */
/* 80523F88  81 84 00 D0 */	lwz r12, 0xd0(r4)
/* 80523F8C  7F E3 FB 78 */	mr r3, r31
/* 80523F90  7F 84 E3 78 */	mr r4, r28
/* 80523F94  7D 89 03 A6 */	mtctr r12
/* 80523F98  4E 80 04 21 */	bctrl 
/* 80523F9C  38 00 FF FF */	li r0, -1
/* 80523FA0  28 1E 00 00 */	cmplwi r30, 0
/* 80523FA4  90 1F 08 F4 */	stw r0, 0x8f4(r31)
/* 80523FA8  38 00 00 03 */	li r0, 3
/* 80523FAC  98 1F 07 51 */	stb r0, 0x751(r31)
/* 80523FB0  40 82 00 3C */	bne lbl_80523FEC
/* 80523FB4  38 60 00 71 */	li r3, 0x71
/* 80523FB8  38 80 00 22 */	li r4, 0x22
/* 80523FBC  4B E7 9C 69 */	bl mEv_reserve_save_area
/* 80523FC0  7C 7E 1B 78 */	mr r30, r3
/* 80523FC4  38 00 00 00 */	li r0, 0
/* 80523FC8  B0 03 00 00 */	sth r0, 0(r3)
/* 80523FCC  4B B3 8D 29 */	bl fqrand
/* 80523FD0  3C 60 80 65 */	lis r3, data_80649184@ha /* 0x80649184@ha */
/* 80523FD4  C0 03 91 84 */	lfs f0, data_80649184@l(r3)  /* 0x80649184@l */
/* 80523FD8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80523FDC  FC 00 00 1E */	fctiwz f0, f0
/* 80523FE0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80523FE4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80523FE8  98 1E 00 02 */	stb r0, 2(r30)
lbl_80523FEC:
/* 80523FEC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80523FF0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80523FF4  3C 63 00 02 */	addis r3, r3, 2
/* 80523FF8  88 03 13 F2 */	lbz r0, 0x13f2(r3)
/* 80523FFC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80524000  41 82 00 0C */	beq lbl_8052400C
/* 80524004  7F E3 FB 78 */	mr r3, r31
/* 80524008  4B E5 04 39 */	bl Actor_delete
lbl_8052400C:
/* 8052400C  39 61 00 20 */	addi r11, r1, 0x20
/* 80524010  4B B7 6F 0D */	bl func_8009AF1C
/* 80524014  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80524018  7C 08 03 A6 */	mtlr r0
/* 8052401C  38 21 00 20 */	addi r1, r1, 0x20
/* 80524020  4E 80 00 20 */	blr 
