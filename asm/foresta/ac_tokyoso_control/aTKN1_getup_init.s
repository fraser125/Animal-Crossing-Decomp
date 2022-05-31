lbl_804AB3E4:
/* 804AB3E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AB3E8  7C 08 02 A6 */	mflr r0
/* 804AB3EC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804AB3F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AB3F4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 804AB3F8  3C C5 00 02 */	addis r6, r5, 2
/* 804AB3FC  38 80 00 68 */	li r4, 0x68
/* 804AB400  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AB404  7C 7F 1B 78 */	mr r31, r3
/* 804AB408  38 A0 00 00 */	li r5, 0
/* 804AB40C  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 804AB410  81 86 01 14 */	lwz r12, 0x114(r6)
/* 804AB414  7D 89 03 A6 */	mtctr r12
/* 804AB418  4E 80 04 21 */	bctrl 
/* 804AB41C  3C 60 80 64 */	lis r3, lit_614@ha /* 0x80645E58@ha */
/* 804AB420  38 00 00 00 */	li r0, 0
/* 804AB424  90 1F 01 BC */	stw r0, 0x1bc(r31)
/* 804AB428  38 00 00 02 */	li r0, 2
/* 804AB42C  C0 03 5E 58 */	lfs f0, lit_614@l(r3)  /* 0x80645E58@l */
/* 804AB430  38 60 00 68 */	li r3, 0x68
/* 804AB434  D0 1F 09 00 */	stfs f0, 0x900(r31)
/* 804AB438  B0 7F 09 74 */	sth r3, 0x974(r31)
/* 804AB43C  98 1F 09 73 */	stb r0, 0x973(r31)
/* 804AB440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AB444  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AB448  7C 08 03 A6 */	mtlr r0
/* 804AB44C  38 21 00 10 */	addi r1, r1, 0x10
/* 804AB450  4E 80 00 20 */	blr 
