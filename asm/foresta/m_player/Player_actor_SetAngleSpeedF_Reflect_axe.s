lbl_804F0D20:
/* 804F0D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F0D24  7C 08 02 A6 */	mflr r0
/* 804F0D28  3C 80 80 64 */	lis r4, lit_3046@ha /* 0x80646E54@ha */
/* 804F0D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F0D30  C0 24 6E 54 */	lfs f1, lit_3046@l(r4)  /* 0x80646E54@l */
/* 804F0D34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F0D38  7C 7F 1B 78 */	mr r31, r3
/* 804F0D3C  38 7F 01 74 */	addi r3, r31, 0x174
/* 804F0D40  4B FE 68 C1 */	bl Player_actor_Check_AnimationFrame
/* 804F0D44  2C 03 00 00 */	cmpwi r3, 0
/* 804F0D48  41 82 00 20 */	beq lbl_804F0D68
/* 804F0D4C  3C 60 80 65 */	lis r3, lit_10468@ha /* 0x806484F0@ha */
/* 804F0D50  C0 03 84 F0 */	lfs f0, lit_10468@l(r3)  /* 0x806484F0@l */
/* 804F0D54  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 804F0D58  A8 7F 00 DE */	lha r3, 0xde(r31)
/* 804F0D5C  3C 63 00 01 */	addis r3, r3, 1
/* 804F0D60  38 03 80 00 */	addi r0, r3, -32768
/* 804F0D64  B0 1F 00 36 */	sth r0, 0x36(r31)
lbl_804F0D68:
/* 804F0D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F0D6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F0D70  7C 08 03 A6 */	mtlr r0
/* 804F0D74  38 21 00 10 */	addi r1, r1, 0x10
/* 804F0D78  4E 80 00 20 */	blr 
