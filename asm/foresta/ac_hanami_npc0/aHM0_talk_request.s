lbl_80529FF0:
/* 80529FF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529FF4  7C 08 02 A6 */	mflr r0
/* 80529FF8  3C A0 80 53 */	lis r5, aHM0_set_talk_info@ha /* 0x80529F74@ha */
/* 80529FFC  7C 64 1B 78 */	mr r4, r3
/* 8052A000  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052A004  38 A5 9F 74 */	addi r5, r5, aHM0_set_talk_info@l /* 0x80529F74@l */
/* 8052A008  38 60 00 07 */	li r3, 7
/* 8052A00C  4B E7 01 51 */	bl mDemo_Request
/* 8052A010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052A014  7C 08 03 A6 */	mtlr r0
/* 8052A018  38 21 00 10 */	addi r1, r1, 0x10
/* 8052A01C  4E 80 00 20 */	blr 
