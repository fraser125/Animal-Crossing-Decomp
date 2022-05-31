lbl_80561C4C:
/* 80561C4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80561C50  7C 08 02 A6 */	mflr r0
/* 80561C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80561C58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80561C5C  7C 7F 1B 78 */	mr r31, r3
/* 80561C60  4B FF FF D1 */	bl aNNW_first_talk_check
/* 80561C64  2C 03 00 00 */	cmpwi r3, 0
/* 80561C68  40 82 00 1C */	bne lbl_80561C84
/* 80561C6C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80561C70  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80561C74  3C 63 00 03 */	addis r3, r3, 3
/* 80561C78  88 03 88 80 */	lbz r0, -0x7780(r3)
/* 80561C7C  7C 00 FB 78 */	or r0, r0, r31
/* 80561C80  98 03 88 80 */	stb r0, -0x7780(r3)
lbl_80561C84:
/* 80561C84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80561C88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80561C8C  7C 08 03 A6 */	mtlr r0
/* 80561C90  38 21 00 10 */	addi r1, r1, 0x10
/* 80561C94  4E 80 00 20 */	blr 
