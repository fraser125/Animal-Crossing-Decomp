lbl_80413D60:
/* 80413D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80413D64  7C 08 02 A6 */	mflr r0
/* 80413D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80413D6C  4B FF FF A5 */	bl Ac_Balloon_Movement_hide
/* 80413D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80413D74  7C 08 03 A6 */	mtlr r0
/* 80413D78  38 21 00 10 */	addi r1, r1, 0x10
/* 80413D7C  4E 80 00 20 */	blr 
