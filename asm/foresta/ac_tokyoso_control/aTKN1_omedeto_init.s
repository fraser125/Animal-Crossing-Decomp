lbl_804AB5D4:
/* 804AB5D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AB5D8  7C 08 02 A6 */	mflr r0
/* 804AB5DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AB5E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AB5E4  7C 7F 1B 78 */	mr r31, r3
/* 804AB5E8  4B FF FA 3D */	bl aTKN1_wait_init
/* 804AB5EC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804AB5F0  7F E3 FB 78 */	mr r3, r31
/* 804AB5F4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 804AB5F8  38 80 00 43 */	li r4, 0x43
/* 804AB5FC  3C C5 00 02 */	addis r6, r5, 2
/* 804AB600  38 A0 00 00 */	li r5, 0
/* 804AB604  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 804AB608  81 86 01 14 */	lwz r12, 0x114(r6)
/* 804AB60C  7D 89 03 A6 */	mtctr r12
/* 804AB610  4E 80 04 21 */	bctrl 
/* 804AB614  38 00 00 01 */	li r0, 1
/* 804AB618  90 1F 01 BC */	stw r0, 0x1bc(r31)
/* 804AB61C  80 1F 08 40 */	lwz r0, 0x840(r31)
/* 804AB620  60 00 00 14 */	ori r0, r0, 0x14
/* 804AB624  90 1F 08 40 */	stw r0, 0x840(r31)
/* 804AB628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AB62C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AB630  7C 08 03 A6 */	mtlr r0
/* 804AB634  38 21 00 10 */	addi r1, r1, 0x10
/* 804AB638  4E 80 00 20 */	blr 
