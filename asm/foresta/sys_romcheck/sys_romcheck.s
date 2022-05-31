lbl_80629C64:
/* 80629C64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80629C68  7C 08 02 A6 */	mflr r0
/* 80629C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80629C70  4B A5 D9 49 */	bl DVDGetCurrentDiskID
/* 80629C74  88 03 00 07 */	lbz r0, 7(r3)
/* 80629C78  28 00 00 90 */	cmplwi r0, 0x90
/* 80629C7C  41 80 00 18 */	blt lbl_80629C94
/* 80629C80  3C 60 80 20 */	lis r3, osAppNMIBuffer@ha /* 0x80206F60@ha */
/* 80629C84  38 63 6F 60 */	addi r3, r3, osAppNMIBuffer@l /* 0x80206F60@l */
/* 80629C88  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 80629C8C  60 00 00 08 */	ori r0, r0, 8
/* 80629C90  90 03 00 3C */	stw r0, 0x3c(r3)
lbl_80629C94:
/* 80629C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80629C98  7C 08 03 A6 */	mtlr r0
/* 80629C9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80629CA0  4E 80 00 20 */	blr 
