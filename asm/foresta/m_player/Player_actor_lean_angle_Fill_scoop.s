lbl_804F8244:
/* 804F8244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F8248  7C 08 02 A6 */	mflr r0
/* 804F824C  3C 80 80 65 */	lis r4, lit_7320@ha /* 0x80648350@ha */
/* 804F8250  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F8254  38 A4 83 50 */	addi r5, r4, lit_7320@l /* 0x80648350@l */
/* 804F8258  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F825C  38 83 0D 18 */	addi r4, r3, 0xd18
/* 804F8260  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 804F8264  2C 00 00 59 */	cmpwi r0, 0x59
/* 804F8268  40 82 00 10 */	bne lbl_804F8278
/* 804F826C  3C A0 80 65 */	lis r5, lit_8275@ha /* 0x8064843C@ha */
/* 804F8270  C0 05 84 3C */	lfs f0, lit_8275@l(r5)  /* 0x8064843C@l */
/* 804F8274  48 00 00 0C */	b lbl_804F8280
lbl_804F8278:
/* 804F8278  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804F827C  C0 05 65 68 */	lfs f0, lit_604@l(r5)  /* 0x80646568@l */
lbl_804F8280:
/* 804F8280  EC 21 00 2A */	fadds f1, f1, f0
/* 804F8284  4B FF F7 21 */	bl Player_actor_lean_angle_scoop_common
/* 804F8288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F828C  7C 08 03 A6 */	mtlr r0
/* 804F8290  38 21 00 10 */	addi r1, r1, 0x10
/* 804F8294  4E 80 00 20 */	blr 
