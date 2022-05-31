lbl_805C4D2C:
/* 805C4D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C4D30  7C 08 02 A6 */	mflr r0
/* 805C4D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C4D38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C4D3C  93 C1 00 08 */	stw r30, 8(r1)
/* 805C4D40  7C 7E 1B 78 */	mr r30, r3
/* 805C4D44  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805C4D48  80 1F 09 BC */	lwz r0, 0x9bc(r31)
/* 805C4D4C  28 00 00 00 */	cmplwi r0, 0
/* 805C4D50  40 82 00 24 */	bne lbl_805C4D74
/* 805C4D54  3C 60 81 21 */	lis r3, birthday_ovl_data@ha /* 0x812101F8@ha */
/* 805C4D58  38 80 00 08 */	li r4, 8
/* 805C4D5C  38 63 01 F8 */	addi r3, r3, birthday_ovl_data@l /* 0x812101F8@l */
/* 805C4D60  38 A0 00 00 */	li r5, 0
/* 805C4D64  4B DF 5C E5 */	bl mem_clear
/* 805C4D68  3C 60 81 21 */	lis r3, birthday_ovl_data@ha /* 0x812101F8@ha */
/* 805C4D6C  38 03 01 F8 */	addi r0, r3, birthday_ovl_data@l /* 0x812101F8@l */
/* 805C4D70  90 1F 09 BC */	stw r0, 0x9bc(r31)
lbl_805C4D74:
/* 805C4D74  7F C3 F3 78 */	mr r3, r30
/* 805C4D78  4B FF FF 49 */	bl mBR_birthday_ovl_init
/* 805C4D7C  7F C3 F3 78 */	mr r3, r30
/* 805C4D80  4B FF FF 21 */	bl mBR_birthday_ovl_set_proc
/* 805C4D84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C4D88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C4D8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C4D90  7C 08 03 A6 */	mtlr r0
/* 805C4D94  38 21 00 10 */	addi r1, r1, 0x10
/* 805C4D98  4E 80 00 20 */	blr 
