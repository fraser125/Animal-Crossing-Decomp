lbl_80578304:
/* 80578304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80578308  7C 08 02 A6 */	mflr r0
/* 8057830C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80578310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80578314  7C BF 2B 78 */	mr r31, r5
/* 80578318  93 C1 00 08 */	stw r30, 8(r1)
/* 8057831C  7C 9E 23 78 */	mr r30, r4
/* 80578320  7F E4 FB 78 */	mr r4, r31
/* 80578324  4B E4 86 75 */	bl mMsg_ChangeMsgData
/* 80578328  93 FE 09 C4 */	stw r31, 0x9c4(r30)
/* 8057832C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80578330  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80578334  83 C1 00 08 */	lwz r30, 8(r1)
/* 80578338  7C 08 03 A6 */	mtlr r0
/* 8057833C  38 21 00 10 */	addi r1, r1, 0x10
/* 80578340  4E 80 00 20 */	blr 
