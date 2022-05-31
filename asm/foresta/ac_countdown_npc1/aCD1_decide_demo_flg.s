lbl_80517A38:
/* 80517A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80517A3C  7C 08 02 A6 */	mflr r0
/* 80517A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80517A44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80517A48  7C 7F 1B 78 */	mr r31, r3
/* 80517A4C  4B FF FE 4D */	bl aCD1_get_now_term
/* 80517A50  80 1F 09 A0 */	lwz r0, 0x9a0(r31)
/* 80517A54  7C 03 00 00 */	cmpw r3, r0
/* 80517A58  41 82 00 58 */	beq lbl_80517AB0
/* 80517A5C  2C 03 00 04 */	cmpwi r3, 4
/* 80517A60  40 82 00 1C */	bne lbl_80517A7C
/* 80517A64  38 00 01 37 */	li r0, 0x137
/* 80517A68  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 80517A6C  90 1F 08 40 */	stw r0, 0x840(r31)
/* 80517A70  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 80517A74  90 1F 09 64 */	stw r0, 0x964(r31)
/* 80517A78  48 00 00 34 */	b lbl_80517AAC
lbl_80517A7C:
/* 80517A7C  80 1F 09 A8 */	lwz r0, 0x9a8(r31)
/* 80517A80  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80517A84  2C 00 00 01 */	cmpwi r0, 1
/* 80517A88  40 82 00 10 */	bne lbl_80517A98
/* 80517A8C  38 00 00 37 */	li r0, 0x37
/* 80517A90  90 1F 08 40 */	stw r0, 0x840(r31)
/* 80517A94  48 00 00 0C */	b lbl_80517AA0
lbl_80517A98:
/* 80517A98  38 00 00 03 */	li r0, 3
/* 80517A9C  90 1F 08 40 */	stw r0, 0x840(r31)
lbl_80517AA0:
/* 80517AA0  3C 80 80 52 */	lis r4, aCD1_talk_request@ha /* 0x80518004@ha */
/* 80517AA4  38 04 80 04 */	addi r0, r4, aCD1_talk_request@l /* 0x80518004@l */
/* 80517AA8  90 1F 09 64 */	stw r0, 0x964(r31)
lbl_80517AAC:
/* 80517AAC  90 7F 09 A0 */	stw r3, 0x9a0(r31)
lbl_80517AB0:
/* 80517AB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80517AB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80517AB8  7C 08 03 A6 */	mtlr r0
/* 80517ABC  38 21 00 10 */	addi r1, r1, 0x10
/* 80517AC0  4E 80 00 20 */	blr 
