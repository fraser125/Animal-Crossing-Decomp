lbl_804AB264:
/* 804AB264  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AB268  7C 08 02 A6 */	mflr r0
/* 804AB26C  38 80 00 08 */	li r4, 8
/* 804AB270  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AB274  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AB278  93 C1 00 08 */	stw r30, 8(r1)
/* 804AB27C  7C 7E 1B 78 */	mr r30, r3
/* 804AB280  38 60 00 0F */	li r3, 0xf
/* 804AB284  4B EF 2B 49 */	bl mEv_get_save_area
/* 804AB288  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804AB28C  7C 7F 1B 78 */	mr r31, r3
/* 804AB290  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804AB294  7F C3 F3 78 */	mr r3, r30
/* 804AB298  3C A4 00 02 */	addis r5, r4, 2
/* 804AB29C  38 80 00 64 */	li r4, 0x64
/* 804AB2A0  80 C5 60 4C */	lwz r6, 0x604c(r5)
/* 804AB2A4  38 A0 00 00 */	li r5, 0
/* 804AB2A8  81 86 01 14 */	lwz r12, 0x114(r6)
/* 804AB2AC  7D 89 03 A6 */	mtctr r12
/* 804AB2B0  4E 80 04 21 */	bctrl 
/* 804AB2B4  A0 7E 00 06 */	lhz r3, 6(r30)
/* 804AB2B8  38 80 00 20 */	li r4, 0x20
/* 804AB2BC  A0 BF 00 02 */	lhz r5, 2(r31)
/* 804AB2C0  38 00 00 F0 */	li r0, 0xf0
/* 804AB2C4  3C 63 FF FF */	addis r3, r3, 0xffff
/* 804AB2C8  38 63 2F D3 */	addi r3, r3, 0x2fd3
/* 804AB2CC  54 63 07 FE */	clrlwi r3, r3, 0x1f
/* 804AB2D0  7C 83 18 30 */	slw r3, r4, r3
/* 804AB2D4  7C A3 18 78 */	andc r3, r5, r3
/* 804AB2D8  B0 7F 00 02 */	sth r3, 2(r31)
/* 804AB2DC  B0 1E 09 A0 */	sth r0, 0x9a0(r30)
/* 804AB2E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AB2E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AB2E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AB2EC  7C 08 03 A6 */	mtlr r0
/* 804AB2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804AB2F4  4E 80 00 20 */	blr 
