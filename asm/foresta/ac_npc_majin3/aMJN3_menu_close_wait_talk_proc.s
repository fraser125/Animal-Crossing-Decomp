lbl_805582F0:
/* 805582F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805582F4  7C 08 02 A6 */	mflr r0
/* 805582F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805582FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80558300  7C 9F 23 78 */	mr r31, r4
/* 80558304  93 C1 00 08 */	stw r30, 8(r1)
/* 80558308  7C 7E 1B 78 */	mr r30, r3
/* 8055830C  88 04 1F 4E */	lbz r0, 0x1f4e(r4)
/* 80558310  28 00 00 00 */	cmplwi r0, 0
/* 80558314  40 82 00 20 */	bne lbl_80558334
/* 80558318  4B E6 73 91 */	bl func_803BF6A8
/* 8055831C  38 00 00 01 */	li r0, 1
/* 80558320  98 1F 1F 51 */	stb r0, 0x1f51(r31)
/* 80558324  4B E6 78 65 */	bl mMsg_request_main_appear_wait_type1
/* 80558328  7F C3 F3 78 */	mr r3, r30
/* 8055832C  38 80 00 03 */	li r4, 3
/* 80558330  48 00 00 95 */	bl aMJN3_change_talk_proc
lbl_80558334:
/* 80558334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80558338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055833C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80558340  7C 08 03 A6 */	mtlr r0
/* 80558344  38 21 00 10 */	addi r1, r1, 0x10
/* 80558348  4E 80 00 20 */	blr 
