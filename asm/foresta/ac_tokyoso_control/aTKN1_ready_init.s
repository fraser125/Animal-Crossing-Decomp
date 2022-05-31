lbl_804AB2F8:
/* 804AB2F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AB2FC  7C 08 02 A6 */	mflr r0
/* 804AB300  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AB304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AB308  7C 7F 1B 78 */	mr r31, r3
/* 804AB30C  4B FF FD 19 */	bl aTKN1_wait_init
/* 804AB310  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804AB314  7F E3 FB 78 */	mr r3, r31
/* 804AB318  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 804AB31C  38 80 00 65 */	li r4, 0x65
/* 804AB320  3C C5 00 02 */	addis r6, r5, 2
/* 804AB324  38 A0 00 00 */	li r5, 0
/* 804AB328  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 804AB32C  81 86 01 14 */	lwz r12, 0x114(r6)
/* 804AB330  7D 89 03 A6 */	mtctr r12
/* 804AB334  4E 80 04 21 */	bctrl 
/* 804AB338  38 60 00 65 */	li r3, 0x65
/* 804AB33C  38 00 00 02 */	li r0, 2
/* 804AB340  B0 7F 09 74 */	sth r3, 0x974(r31)
/* 804AB344  98 1F 09 73 */	stb r0, 0x973(r31)
/* 804AB348  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AB34C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AB350  7C 08 03 A6 */	mtlr r0
/* 804AB354  38 21 00 10 */	addi r1, r1, 0x10
/* 804AB358  4E 80 00 20 */	blr 
