lbl_8062B0CC:
/* 8062B0CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062B0D0  7C 08 02 A6 */	mflr r0
/* 8062B0D4  3C 60 80 0E */	lis r3, boot_copyDate@ha /* 0x800E2308@ha */
/* 8062B0D8  3C A0 80 6D */	lis r5, data_806D45D0@ha /* 0x806D45D0@ha */
/* 8062B0DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062B0E0  38 83 23 08 */	addi r4, r3, boot_copyDate@l /* 0x800E2308@l */
/* 8062B0E4  38 60 00 82 */	li r3, 0x82
/* 8062B0E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062B0EC  3B E5 45 D0 */	addi r31, r5, data_806D45D0@l /* 0x806D45D0@l */
/* 8062B0F0  38 DF 00 CC */	addi r6, r31, 0xcc
/* 8062B0F4  38 A0 00 01 */	li r5, 1
/* 8062B0F8  80 E4 00 00 */	lwz r7, 0(r4)
/* 8062B0FC  38 80 01 72 */	li r4, 0x172
/* 8062B100  4C C6 31 82 */	crclr 6
/* 8062B104  4B A3 5C E1 */	bl JW_JUTReport
/* 8062B108  3C 60 80 0B */	lis r3, __DateTime__@ha /* 0x800B05F4@ha */
/* 8062B10C  38 DF 00 E0 */	addi r6, r31, 0xe0
/* 8062B110  38 E3 05 F4 */	addi r7, r3, __DateTime__@l /* 0x800B05F4@l */
/* 8062B114  38 80 01 80 */	li r4, 0x180
/* 8062B118  38 60 00 82 */	li r3, 0x82
/* 8062B11C  38 A0 00 01 */	li r5, 1
/* 8062B120  4C C6 31 82 */	crclr 6
/* 8062B124  4B A3 5C C1 */	bl JW_JUTReport
/* 8062B128  3C 60 80 0B */	lis r3, data_800B05E8@ha /* 0x800B05E8@ha */
/* 8062B12C  38 DF 00 EC */	addi r6, r31, 0xec
/* 8062B130  38 E3 05 E8 */	addi r7, r3, data_800B05E8@l /* 0x800B05E8@l */
/* 8062B134  38 80 01 8E */	li r4, 0x18e
/* 8062B138  38 60 00 82 */	li r3, 0x82
/* 8062B13C  38 A0 00 01 */	li r5, 1
/* 8062B140  4C C6 31 82 */	crclr 6
/* 8062B144  4B A3 5C A1 */	bl JW_JUTReport
/* 8062B148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062B14C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062B150  7C 08 03 A6 */	mtlr r0
/* 8062B154  38 21 00 10 */	addi r1, r1, 0x10
/* 8062B158  4E 80 00 20 */	blr 
