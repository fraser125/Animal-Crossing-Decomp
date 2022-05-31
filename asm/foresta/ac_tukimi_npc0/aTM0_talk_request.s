lbl_8058DDA8:
/* 8058DDA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058DDAC  7C 08 02 A6 */	mflr r0
/* 8058DDB0  3C A0 80 59 */	lis r5, aTM0_set_talk_info@ha /* 0x8058DCA0@ha */
/* 8058DDB4  7C 64 1B 78 */	mr r4, r3
/* 8058DDB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058DDBC  38 A5 DC A0 */	addi r5, r5, aTM0_set_talk_info@l /* 0x8058DCA0@l */
/* 8058DDC0  38 60 00 07 */	li r3, 7
/* 8058DDC4  4B E0 C3 99 */	bl mDemo_Request
/* 8058DDC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058DDCC  7C 08 03 A6 */	mtlr r0
/* 8058DDD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058DDD4  4E 80 00 20 */	blr 
