lbl_8054FD68:
/* 8054FD68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054FD6C  7C 08 02 A6 */	mflr r0
/* 8054FD70  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054FD74  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8054FD78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054FD7C  3C A5 00 02 */	addis r5, r5, 2
/* 8054FD80  80 A5 60 94 */	lwz r5, 0x6094(r5)
/* 8054FD84  80 05 00 10 */	lwz r0, 0x10(r5)
/* 8054FD88  7C 00 18 40 */	cmplw r0, r3
/* 8054FD8C  41 82 00 0C */	beq lbl_8054FD98
/* 8054FD90  38 A0 00 0B */	li r5, 0xb
/* 8054FD94  48 00 2A A1 */	bl aNSC_setupAction
lbl_8054FD98:
/* 8054FD98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054FD9C  7C 08 03 A6 */	mtlr r0
/* 8054FDA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8054FDA4  4E 80 00 20 */	blr 
