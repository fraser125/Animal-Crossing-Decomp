lbl_804D6B80:
/* 804D6B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D6B84  7C 08 02 A6 */	mflr r0
/* 804D6B88  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804D6B8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D6B90  C0 25 65 68 */	lfs f1, lit_604@l(r5)  /* 0x80646568@l */
/* 804D6B94  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 804D6B98  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804D6B9C  41 82 00 10 */	beq lbl_804D6BAC
/* 804D6BA0  38 00 00 32 */	li r0, 0x32
/* 804D6BA4  98 03 00 D6 */	stb r0, 0xd6(r3)
/* 804D6BA8  48 00 00 0C */	b lbl_804D6BB4
lbl_804D6BAC:
/* 804D6BAC  38 00 00 FE */	li r0, 0xfe
/* 804D6BB0  98 03 00 D6 */	stb r0, 0xd6(r3)
lbl_804D6BB4:
/* 804D6BB4  4B FF FF 81 */	bl Player_actor_Excute_Corect_forStand
/* 804D6BB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6BBC  7C 08 03 A6 */	mtlr r0
/* 804D6BC0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D6BC4  4E 80 00 20 */	blr 
