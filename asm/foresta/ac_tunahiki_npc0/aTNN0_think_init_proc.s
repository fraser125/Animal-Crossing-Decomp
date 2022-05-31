lbl_8058ECD4:
/* 8058ECD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058ECD8  7C 08 02 A6 */	mflr r0
/* 8058ECDC  38 A0 00 01 */	li r5, 1
/* 8058ECE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058ECE4  38 00 00 FF */	li r0, 0xff
/* 8058ECE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058ECEC  7C 7F 1B 78 */	mr r31, r3
/* 8058ECF0  98 03 00 D6 */	stb r0, 0xd6(r3)
/* 8058ECF4  38 00 00 00 */	li r0, 0
/* 8058ECF8  98 03 08 31 */	stb r0, 0x831(r3)
/* 8058ECFC  48 00 00 95 */	bl aTNN0_setup_think_proc
/* 8058ED00  38 00 00 14 */	li r0, 0x14
/* 8058ED04  90 1F 08 40 */	stw r0, 0x840(r31)
/* 8058ED08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058ED0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058ED10  7C 08 03 A6 */	mtlr r0
/* 8058ED14  38 21 00 10 */	addi r1, r1, 0x10
/* 8058ED18  4E 80 00 20 */	blr 
