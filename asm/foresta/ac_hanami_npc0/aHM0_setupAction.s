lbl_80529BB8:
/* 80529BB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80529BBC  7C 08 02 A6 */	mflr r0
/* 80529BC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80529BC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80529BC8  4B B7 13 09 */	bl func_8009AED0
/* 80529BCC  7C 7F 1B 78 */	mr r31, r3
/* 80529BD0  38 00 00 00 */	li r0, 0
/* 80529BD4  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 80529BD8  7C 9C 23 78 */	mr r28, r4
/* 80529BDC  3C 60 80 6A */	lis r3, data_806A1168@ha /* 0x806A1168@ha */
/* 80529BE0  3B C3 11 68 */	addi r30, r3, data_806A1168@l /* 0x806A1168@l */
/* 80529BE4  93 9F 09 94 */	stw r28, 0x994(r31)
/* 80529BE8  54 9D 10 3A */	slwi r29, r4, 2
/* 80529BEC  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80529BF0  7C 03 E8 2E */	lwzx r0, r3, r29
/* 80529BF4  90 1F 09 98 */	stw r0, 0x998(r31)
/* 80529BF8  4B B3 30 FD */	bl fqrand
/* 80529BFC  38 7E 00 64 */	addi r3, r30, 0x64
/* 80529C00  38 9E 00 58 */	addi r4, r30, 0x58
/* 80529C04  7C 03 EC 2E */	lfsx f0, r3, r29
/* 80529C08  7F E3 FB 78 */	mr r3, r31
/* 80529C0C  7C 04 E8 2E */	lwzx r0, r4, r29
/* 80529C10  7F 84 E3 78 */	mr r4, r28
/* 80529C14  EC 00 00 72 */	fmuls f0, f0, f1
/* 80529C18  FC 00 00 1E */	fctiwz f0, f0
/* 80529C1C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80529C20  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80529C24  7C 00 2A 14 */	add r0, r0, r5
/* 80529C28  98 1F 07 53 */	stb r0, 0x753(r31)
/* 80529C2C  4B FF FE 05 */	bl aHM0_set_animation
/* 80529C30  2C 1C 00 01 */	cmpwi r28, 1
/* 80529C34  40 82 00 2C */	bne lbl_80529C60
/* 80529C38  4B B3 30 BD */	bl fqrand
/* 80529C3C  3C 80 80 65 */	lis r4, data_8064922C@ha /* 0x8064922C@ha */
/* 80529C40  38 7E 00 70 */	addi r3, r30, 0x70
/* 80529C44  C0 04 92 2C */	lfs f0, data_8064922C@l(r4)  /* 0x8064922C@l */
/* 80529C48  EC 00 00 72 */	fmuls f0, f0, f1
/* 80529C4C  FC 00 00 1E */	fctiwz f0, f0
/* 80529C50  D8 01 00 08 */	stfd f0, 8(r1)
/* 80529C54  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80529C58  7C 03 00 AE */	lbzx r0, r3, r0
/* 80529C5C  98 1F 09 A0 */	stb r0, 0x9a0(r31)
lbl_80529C60:
/* 80529C60  39 61 00 20 */	addi r11, r1, 0x20
/* 80529C64  4B B7 12 B9 */	bl func_8009AF1C
/* 80529C68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80529C6C  7C 08 03 A6 */	mtlr r0
/* 80529C70  38 21 00 20 */	addi r1, r1, 0x20
/* 80529C74  4E 80 00 20 */	blr 
