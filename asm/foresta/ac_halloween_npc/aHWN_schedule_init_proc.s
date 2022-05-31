lbl_80528284:
/* 80528284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80528288  7C 08 02 A6 */	mflr r0
/* 8052828C  3C A0 80 53 */	lis r5, aHWN_think_proc@ha /* 0x80528200@ha */
/* 80528290  38 C0 00 01 */	li r6, 1
/* 80528294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80528298  38 05 82 00 */	addi r0, r5, aHWN_think_proc@l /* 0x80528200@l */
/* 8052829C  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 805282A0  80 A3 01 7C */	lwz r5, 0x17c(r3)
/* 805282A4  88 05 08 E8 */	lbz r0, 0x8e8(r5)
/* 805282A8  28 00 00 01 */	cmplwi r0, 1
/* 805282AC  40 82 00 08 */	bne lbl_805282B4
/* 805282B0  38 C0 00 00 */	li r6, 0
lbl_805282B4:
/* 805282B4  98 C3 07 DD */	stb r6, 0x7dd(r3)
/* 805282B8  4B FF FF 7D */	bl aHWN_schedule_think_init
/* 805282BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805282C0  7C 08 03 A6 */	mtlr r0
/* 805282C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805282C8  4E 80 00 20 */	blr 
