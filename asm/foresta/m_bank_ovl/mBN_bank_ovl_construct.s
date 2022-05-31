lbl_805C45AC:
/* 805C45AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C45B0  7C 08 02 A6 */	mflr r0
/* 805C45B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C45B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C45BC  93 C1 00 08 */	stw r30, 8(r1)
/* 805C45C0  7C 7E 1B 78 */	mr r30, r3
/* 805C45C4  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805C45C8  80 1F 09 D4 */	lwz r0, 0x9d4(r31)
/* 805C45CC  28 00 00 00 */	cmplwi r0, 0
/* 805C45D0  40 82 00 24 */	bne lbl_805C45F4
/* 805C45D4  3C 60 81 21 */	lis r3, bn_ovl_data@ha /* 0x812101E0@ha */
/* 805C45D8  38 80 00 18 */	li r4, 0x18
/* 805C45DC  38 63 01 E0 */	addi r3, r3, bn_ovl_data@l /* 0x812101E0@l */
/* 805C45E0  38 A0 00 00 */	li r5, 0
/* 805C45E4  4B DF 64 65 */	bl mem_clear
/* 805C45E8  3C 60 81 21 */	lis r3, bn_ovl_data@ha /* 0x812101E0@ha */
/* 805C45EC  38 03 01 E0 */	addi r0, r3, bn_ovl_data@l /* 0x812101E0@l */
/* 805C45F0  90 1F 09 D4 */	stw r0, 0x9d4(r31)
lbl_805C45F4:
/* 805C45F4  7F C3 F3 78 */	mr r3, r30
/* 805C45F8  4B FF FE 9D */	bl mBN_bank_ovl_init
/* 805C45FC  7F C3 F3 78 */	mr r3, r30
/* 805C4600  4B FF FE 75 */	bl mBN_bank_ovl_set_proc
/* 805C4604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C4608  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C460C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C4610  7C 08 03 A6 */	mtlr r0
/* 805C4614  38 21 00 10 */	addi r1, r1, 0x10
/* 805C4618  4E 80 00 20 */	blr 
