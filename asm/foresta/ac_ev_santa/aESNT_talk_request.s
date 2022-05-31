lbl_80523E28:
/* 80523E28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80523E2C  7C 08 02 A6 */	mflr r0
/* 80523E30  3C A0 80 52 */	lis r5, aESNT_set_talk_info@ha /* 0x80523DE4@ha */
/* 80523E34  7C 64 1B 78 */	mr r4, r3
/* 80523E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80523E3C  38 A5 3D E4 */	addi r5, r5, aESNT_set_talk_info@l /* 0x80523DE4@l */
/* 80523E40  38 60 00 07 */	li r3, 7
/* 80523E44  4B E7 63 19 */	bl mDemo_Request
/* 80523E48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80523E4C  7C 08 03 A6 */	mtlr r0
/* 80523E50  38 21 00 10 */	addi r1, r1, 0x10
/* 80523E54  4E 80 00 20 */	blr 
