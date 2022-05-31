lbl_8046ED50:
/* 8046ED50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046ED54  7C 08 02 A6 */	mflr r0
/* 8046ED58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046ED5C  4B F3 5F 71 */	bl mFI_GetFieldId
/* 8046ED60  54 64 04 26 */	rlwinm r4, r3, 0, 0x10, 0x13
/* 8046ED64  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 8046ED68  38 04 A0 00 */	addi r0, r4, -24576
/* 8046ED6C  30 60 FF FF */	addic r3, r0, -1
/* 8046ED70  38 05 A0 00 */	addi r0, r5, -24576
/* 8046ED74  7C 63 19 10 */	subfe r3, r3, r3
/* 8046ED78  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 8046ED7C  7C 03 18 38 */	and r3, r0, r3
/* 8046ED80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046ED84  7C 08 03 A6 */	mtlr r0
/* 8046ED88  38 21 00 10 */	addi r1, r1, 0x10
/* 8046ED8C  4E 80 00 20 */	blr 
