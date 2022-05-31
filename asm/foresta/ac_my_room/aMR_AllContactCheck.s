lbl_80478D6C:
/* 80478D6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80478D70  7C 08 02 A6 */	mflr r0
/* 80478D74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80478D78  39 61 00 20 */	addi r11, r1, 0x20
/* 80478D7C  4B C2 21 59 */	bl func_8009AED4
/* 80478D80  7C 9D 23 78 */	mr r29, r4
/* 80478D84  38 00 00 00 */	li r0, 0
/* 80478D88  90 04 00 04 */	stw r0, 4(r4)
/* 80478D8C  7C DF 33 78 */	mr r31, r6
/* 80478D90  7C BE 2B 78 */	mr r30, r5
/* 80478D94  90 04 00 00 */	stw r0, 0(r4)
/* 80478D98  38 7F 00 28 */	addi r3, r31, 0x28
/* 80478D9C  C0 06 00 28 */	lfs f0, 0x28(r6)
/* 80478DA0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80478DA4  C0 06 00 30 */	lfs f0, 0x30(r6)
/* 80478DA8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80478DAC  90 05 00 04 */	stw r0, 4(r5)
/* 80478DB0  90 05 00 00 */	stw r0, 0(r5)
/* 80478DB4  4B FF FF 29 */	bl aMR_GroundFlat
/* 80478DB8  2C 03 00 00 */	cmpwi r3, 0
/* 80478DBC  41 82 00 A0 */	beq lbl_80478E5C
/* 80478DC0  7F A3 EB 78 */	mr r3, r29
/* 80478DC4  7F E7 FB 78 */	mr r7, r31
/* 80478DC8  38 C1 00 08 */	addi r6, r1, 8
/* 80478DCC  38 80 00 00 */	li r4, 0
/* 80478DD0  38 A0 00 00 */	li r5, 0
/* 80478DD4  4B FF FE 15 */	bl aMR_MakeContactData
/* 80478DD8  7F A3 EB 78 */	mr r3, r29
/* 80478DDC  7F E7 FB 78 */	mr r7, r31
/* 80478DE0  38 C1 00 08 */	addi r6, r1, 8
/* 80478DE4  38 80 00 00 */	li r4, 0
/* 80478DE8  38 A0 00 07 */	li r5, 7
/* 80478DEC  4B FF FD FD */	bl aMR_MakeContactData
/* 80478DF0  7F A3 EB 78 */	mr r3, r29
/* 80478DF4  7F E7 FB 78 */	mr r7, r31
/* 80478DF8  38 C1 00 08 */	addi r6, r1, 8
/* 80478DFC  38 80 00 00 */	li r4, 0
/* 80478E00  38 A0 00 18 */	li r5, 0x18
/* 80478E04  4B FF FD E5 */	bl aMR_MakeContactData
/* 80478E08  80 1D 00 00 */	lwz r0, 0(r29)
/* 80478E0C  2C 00 00 01 */	cmpwi r0, 1
/* 80478E10  40 82 00 4C */	bne lbl_80478E5C
/* 80478E14  7F C3 F3 78 */	mr r3, r30
/* 80478E18  7F E7 FB 78 */	mr r7, r31
/* 80478E1C  38 C1 00 08 */	addi r6, r1, 8
/* 80478E20  38 80 00 01 */	li r4, 1
/* 80478E24  38 A0 00 00 */	li r5, 0
/* 80478E28  4B FF FD C1 */	bl aMR_MakeContactData
/* 80478E2C  7F C3 F3 78 */	mr r3, r30
/* 80478E30  7F E7 FB 78 */	mr r7, r31
/* 80478E34  38 C1 00 08 */	addi r6, r1, 8
/* 80478E38  38 80 00 01 */	li r4, 1
/* 80478E3C  38 A0 00 07 */	li r5, 7
/* 80478E40  4B FF FD A9 */	bl aMR_MakeContactData
/* 80478E44  7F C3 F3 78 */	mr r3, r30
/* 80478E48  7F E7 FB 78 */	mr r7, r31
/* 80478E4C  38 C1 00 08 */	addi r6, r1, 8
/* 80478E50  38 80 00 01 */	li r4, 1
/* 80478E54  38 A0 00 18 */	li r5, 0x18
/* 80478E58  4B FF FD 91 */	bl aMR_MakeContactData
lbl_80478E5C:
/* 80478E5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80478E60  4B C2 20 C1 */	bl func_8009AF20
/* 80478E64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80478E68  7C 08 03 A6 */	mtlr r0
/* 80478E6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80478E70  4E 80 00 20 */	blr 
