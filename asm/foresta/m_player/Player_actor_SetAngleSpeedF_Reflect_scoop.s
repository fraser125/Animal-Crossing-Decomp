lbl_804F8BB4:
/* 804F8BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F8BB8  7C 08 02 A6 */	mflr r0
/* 804F8BBC  3C 80 80 65 */	lis r4, lit_6693@ha /* 0x806480E0@ha */
/* 804F8BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F8BC4  C0 24 80 E0 */	lfs f1, lit_6693@l(r4)  /* 0x806480E0@l */
/* 804F8BC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F8BCC  7C 7F 1B 78 */	mr r31, r3
/* 804F8BD0  38 7F 01 74 */	addi r3, r31, 0x174
/* 804F8BD4  4B FD EA 2D */	bl Player_actor_Check_AnimationFrame
/* 804F8BD8  2C 03 00 00 */	cmpwi r3, 0
/* 804F8BDC  41 82 00 20 */	beq lbl_804F8BFC
/* 804F8BE0  3C 60 80 65 */	lis r3, lit_10468@ha /* 0x806484F0@ha */
/* 804F8BE4  C0 03 84 F0 */	lfs f0, lit_10468@l(r3)  /* 0x806484F0@l */
/* 804F8BE8  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 804F8BEC  A8 7F 00 DE */	lha r3, 0xde(r31)
/* 804F8BF0  3C 63 00 01 */	addis r3, r3, 1
/* 804F8BF4  38 03 80 00 */	addi r0, r3, -32768
/* 804F8BF8  B0 1F 00 36 */	sth r0, 0x36(r31)
lbl_804F8BFC:
/* 804F8BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F8C00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F8C04  7C 08 03 A6 */	mtlr r0
/* 804F8C08  38 21 00 10 */	addi r1, r1, 0x10
/* 804F8C0C  4E 80 00 20 */	blr 
