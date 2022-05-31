lbl_8062E4F0:
/* 8062E4F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062E4F4  7C 08 02 A6 */	mflr r0
/* 8062E4F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062E4FC  4B 9E 6D E9 */	bl Na_TrgSeEcho
/* 8062E500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062E504  7C 08 03 A6 */	mtlr r0
/* 8062E508  38 21 00 10 */	addi r1, r1, 0x10
/* 8062E50C  4E 80 00 20 */	blr 
