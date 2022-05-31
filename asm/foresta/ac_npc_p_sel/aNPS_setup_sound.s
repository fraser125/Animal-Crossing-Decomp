lbl_80566B70:
/* 80566B70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80566B74  7C 08 02 A6 */	mflr r0
/* 80566B78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80566B7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80566B80  7C 7F 1B 78 */	mr r31, r3
/* 80566B84  4B FF FD 01 */	bl func_80566884
/* 80566B88  2C 03 00 01 */	cmpwi r3, 1
/* 80566B8C  40 82 00 10 */	bne lbl_80566B9C
/* 80566B90  7F E3 FB 78 */	mr r3, r31
/* 80566B94  38 80 00 02 */	li r4, 2
/* 80566B98  48 00 01 69 */	bl aNPS_change_talk_proc
lbl_80566B9C:
/* 80566B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80566BA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80566BA4  7C 08 03 A6 */	mtlr r0
/* 80566BA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80566BAC  4E 80 00 20 */	blr 
