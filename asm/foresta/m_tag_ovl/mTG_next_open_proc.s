lbl_805F5D28:
/* 805F5D28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F5D2C  7C 08 02 A6 */	mflr r0
/* 805F5D30  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F5D34  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805F5D38  80 C5 09 7C */	lwz r6, 0x97c(r5)
/* 805F5D3C  80 06 00 00 */	lwz r0, 0(r6)
/* 805F5D40  1C A0 00 B4 */	mulli r5, r0, 0xb4
/* 805F5D44  38 A5 00 08 */	addi r5, r5, 8
/* 805F5D48  7C A6 2A 14 */	add r5, r6, r5
/* 805F5D4C  88 05 00 00 */	lbz r0, 0(r5)
/* 805F5D50  28 00 00 2A */	cmplwi r0, 0x2a
/* 805F5D54  40 82 00 0C */	bne lbl_805F5D60
/* 805F5D58  38 C0 00 2B */	li r6, 0x2b
/* 805F5D5C  48 00 00 20 */	b lbl_805F5D7C
lbl_805F5D60:
/* 805F5D60  28 00 00 46 */	cmplwi r0, 0x46
/* 805F5D64  41 82 00 0C */	beq lbl_805F5D70
/* 805F5D68  28 00 00 48 */	cmplwi r0, 0x48
/* 805F5D6C  40 82 00 0C */	bne lbl_805F5D78
lbl_805F5D70:
/* 805F5D70  38 C0 00 47 */	li r6, 0x47
/* 805F5D74  48 00 00 08 */	b lbl_805F5D7C
lbl_805F5D78:
/* 805F5D78  38 C0 00 19 */	li r6, 0x19
lbl_805F5D7C:
/* 805F5D7C  4B FF C4 51 */	bl mTG_chg_tag_func2
/* 805F5D80  38 60 00 33 */	li r3, 0x33
/* 805F5D84  48 03 7F 81 */	bl sAdo_SysTrgStart
/* 805F5D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F5D8C  7C 08 03 A6 */	mtlr r0
/* 805F5D90  38 21 00 10 */	addi r1, r1, 0x10
/* 805F5D94  4E 80 00 20 */	blr 
