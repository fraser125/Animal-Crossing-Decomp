lbl_803E5370:
/* 803E5370  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E5374  7C 08 02 A6 */	mflr r0
/* 803E5378  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E537C  39 61 00 20 */	addi r11, r1, 0x20
/* 803E5380  4B CB 5B 51 */	bl func_8009AED0
/* 803E5384  7C 9C 23 78 */	mr r28, r4
/* 803E5388  7C BD 2B 78 */	mr r29, r5
/* 803E538C  7C DE 33 78 */	mr r30, r6
/* 803E5390  7C FF 3B 78 */	mr r31, r7
/* 803E5394  38 80 00 18 */	li r4, 0x18
/* 803E5398  48 02 00 6D */	bl gfxalloc
/* 803E539C  3C 00 E8 00 */	lis r0, 0xe800
/* 803E53A0  38 9E FF FF */	addi r4, r30, -1
/* 803E53A4  90 03 00 00 */	stw r0, 0(r3)
/* 803E53A8  57 85 62 26 */	rlwinm r5, r28, 0xc, 8, 0x13
/* 803E53AC  38 E0 00 00 */	li r7, 0
/* 803E53B0  54 84 10 3A */	slwi r4, r4, 2
/* 803E53B4  38 1F FF FF */	addi r0, r31, -1
/* 803E53B8  64 A6 F2 00 */	oris r6, r5, 0xf200
/* 803E53BC  7C BC 22 14 */	add r5, r28, r4
/* 803E53C0  57 A4 05 3E */	clrlwi r4, r29, 0x14
/* 803E53C4  54 00 10 3A */	slwi r0, r0, 2
/* 803E53C8  90 E3 00 04 */	stw r7, 4(r3)
/* 803E53CC  7C C6 23 78 */	or r6, r6, r4
/* 803E53D0  39 61 00 20 */	addi r11, r1, 0x20
/* 803E53D4  7C 1D 02 14 */	add r0, r29, r0
/* 803E53D8  90 C3 00 08 */	stw r6, 8(r3)
/* 803E53DC  54 04 05 3E */	clrlwi r4, r0, 0x14
/* 803E53E0  50 A4 62 26 */	rlwimi r4, r5, 0xc, 8, 0x13
/* 803E53E4  3C 00 DF 00 */	lis r0, 0xdf00
/* 803E53E8  90 83 00 0C */	stw r4, 0xc(r3)
/* 803E53EC  90 03 00 10 */	stw r0, 0x10(r3)
/* 803E53F0  90 E3 00 14 */	stw r7, 0x14(r3)
/* 803E53F4  4B CB 5B 29 */	bl func_8009AF1C
/* 803E53F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E53FC  7C 08 03 A6 */	mtlr r0
/* 803E5400  38 21 00 20 */	addi r1, r1, 0x20
/* 803E5404  4E 80 00 20 */	blr 
