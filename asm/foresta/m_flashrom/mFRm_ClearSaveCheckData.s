lbl_803AC624:
/* 803AC624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AC628  7C 08 02 A6 */	mflr r0
/* 803AC62C  38 A0 00 08 */	li r5, 8
/* 803AC630  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AC634  38 00 FF FF */	li r0, -1
/* 803AC638  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AC63C  7C 7F 1B 78 */	mr r31, r3
/* 803AC640  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 803AC644  90 1F 00 04 */	stw r0, 4(r31)
/* 803AC648  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 803AC64C  3C 60 80 64 */	lis r3, data_806432C4@ha /* 0x806432C4@ha */
/* 803AC650  38 9F 00 0A */	addi r4, r31, 0xa
/* 803AC654  B0 1F 00 08 */	sth r0, 8(r31)
/* 803AC658  38 63 32 C4 */	addi r3, r3, data_806432C4@l /* 0x806432C4@l */
/* 803AC65C  4B CB 09 C1 */	bl func_8005D01C
/* 803AC660  38 00 00 00 */	li r0, 0
/* 803AC664  B0 1F 00 12 */	sth r0, 0x12(r31)
/* 803AC668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AC66C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AC670  7C 08 03 A6 */	mtlr r0
/* 803AC674  38 21 00 10 */	addi r1, r1, 0x10
/* 803AC678  4E 80 00 20 */	blr 
