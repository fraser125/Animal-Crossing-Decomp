lbl_804965DC:
/* 804965DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804965E0  7C 08 02 A6 */	mflr r0
/* 804965E4  3C C0 80 64 */	lis r6, lit_494@ha /* 0x80644CAC@ha */
/* 804965E8  3C A0 80 64 */	lis r5, data_80644CA4@ha /* 0x80644CA4@ha */
/* 804965EC  38 E6 4C AC */	addi r7, r6, lit_494@l /* 0x80644CAC@l */
/* 804965F0  3C 60 80 64 */	lis r3, lit_495@ha /* 0x80644CB0@ha */
/* 804965F4  38 C5 4C A4 */	addi r6, r5, data_80644CA4@l /* 0x80644CA4@l */
/* 804965F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804965FC  38 A3 4C B0 */	addi r5, r3, lit_495@l /* 0x80644CB0@l */
/* 80496600  7C 83 23 78 */	mr r3, r4
/* 80496604  C0 27 00 00 */	lfs f1, 0(r7)
/* 80496608  38 80 00 00 */	li r4, 0
/* 8049660C  C0 46 00 00 */	lfs f2, 0(r6)
/* 80496610  C0 65 00 00 */	lfs f3, 0(r5)
/* 80496614  4B F4 47 C9 */	bl mPlib_request_main_demo_walk_type1
/* 80496618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049661C  7C 08 03 A6 */	mtlr r0
/* 80496620  38 21 00 10 */	addi r1, r1, 0x10
/* 80496624  4E 80 00 20 */	blr 
