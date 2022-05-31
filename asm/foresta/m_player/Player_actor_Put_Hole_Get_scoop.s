lbl_804FA238:
/* 804FA238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA23C  7C 08 02 A6 */	mflr r0
/* 804FA240  3C 80 80 64 */	lis r4, lit_2591@ha /* 0x80646C44@ha */
/* 804FA244  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA248  C0 24 6C 44 */	lfs f1, lit_2591@l(r4)  /* 0x80646C44@l */
/* 804FA24C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FA250  7C 7F 1B 78 */	mr r31, r3
/* 804FA254  38 7F 01 74 */	addi r3, r31, 0x174
/* 804FA258  4B FD D3 A9 */	bl Player_actor_Check_AnimationFrame
/* 804FA25C  2C 03 00 00 */	cmpwi r3, 0
/* 804FA260  41 82 00 3C */	beq lbl_804FA29C
/* 804FA264  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804FA268  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804FA26C  3C 63 00 02 */	addis r3, r3, 2
/* 804FA270  80 03 60 80 */	lwz r0, 0x6080(r3)
/* 804FA274  28 00 00 00 */	cmplwi r0, 0
/* 804FA278  41 82 00 24 */	beq lbl_804FA29C
/* 804FA27C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804FA280  3C 80 80 64 */	lis r4, lit_5641@ha /* 0x80647D6C@ha */
/* 804FA284  38 A3 65 68 */	addi r5, r3, lit_604@l /* 0x80646568@l */
/* 804FA288  C0 44 7D 6C */	lfs f2, lit_5641@l(r4)  /* 0x80647D6C@l */
/* 804FA28C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FA290  38 7F 0D 18 */	addi r3, r31, 0xd18
/* 804FA294  38 80 00 0C */	li r4, 0xc
/* 804FA298  4B E9 39 39 */	bl mCoBG_RegistDecalCircle
lbl_804FA29C:
/* 804FA29C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA2A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FA2A4  7C 08 03 A6 */	mtlr r0
/* 804FA2A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA2AC  4E 80 00 20 */	blr 
