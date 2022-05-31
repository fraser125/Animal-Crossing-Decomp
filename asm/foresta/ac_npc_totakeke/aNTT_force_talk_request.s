lbl_80586C54:
/* 80586C54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80586C58  7C 08 02 A6 */	mflr r0
/* 80586C5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80586C60  88 03 09 A1 */	lbz r0, 0x9a1(r3)
/* 80586C64  28 00 00 00 */	cmplwi r0, 0
/* 80586C68  40 82 00 1C */	bne lbl_80586C84
/* 80586C6C  3C A0 80 58 */	lis r5, aNTT_set_force_talk_info@ha /* 0x80586BC4@ha */
/* 80586C70  7C 64 1B 78 */	mr r4, r3
/* 80586C74  38 A5 6B C4 */	addi r5, r5, aNTT_set_force_talk_info@l /* 0x80586BC4@l */
/* 80586C78  38 60 00 08 */	li r3, 8
/* 80586C7C  4B E1 34 E1 */	bl mDemo_Request
/* 80586C80  48 00 00 0C */	b lbl_80586C8C
lbl_80586C84:
/* 80586C84  38 00 00 00 */	li r0, 0
/* 80586C88  98 03 09 A1 */	stb r0, 0x9a1(r3)
lbl_80586C8C:
/* 80586C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80586C90  7C 08 03 A6 */	mtlr r0
/* 80586C94  38 21 00 10 */	addi r1, r1, 0x10
/* 80586C98  4E 80 00 20 */	blr 
