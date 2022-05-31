lbl_80566D58:
/* 80566D58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80566D5C  7C 08 02 A6 */	mflr r0
/* 80566D60  3C A0 80 56 */	lis r5, aNPS_set_talk_info_talk_request@ha /* 0x80566D1C@ha */
/* 80566D64  7C 64 1B 78 */	mr r4, r3
/* 80566D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80566D6C  38 A5 6D 1C */	addi r5, r5, aNPS_set_talk_info_talk_request@l /* 0x80566D1C@l */
/* 80566D70  38 60 00 08 */	li r3, 8
/* 80566D74  4B E3 33 E9 */	bl mDemo_Request
/* 80566D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80566D7C  7C 08 03 A6 */	mtlr r0
/* 80566D80  38 21 00 10 */	addi r1, r1, 0x10
/* 80566D84  4E 80 00 20 */	blr 
