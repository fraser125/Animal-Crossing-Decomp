lbl_803CF370:
/* 803CF370  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CF374  7C 08 02 A6 */	mflr r0
/* 803CF378  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CF37C  39 61 00 20 */	addi r11, r1, 0x20
/* 803CF380  4B CC BB 4D */	bl func_8009AECC
/* 803CF384  3C A0 80 97 */	lis r5, data_8096CC90@ha /* 0x8096CC90@ha */
/* 803CF388  7C 7B 1B 78 */	mr r27, r3
/* 803CF38C  38 05 CC 90 */	addi r0, r5, data_8096CC90@l /* 0x8096CC90@l */
/* 803CF390  7C 9C 23 78 */	mr r28, r4
/* 803CF394  7C 1E 03 78 */	mr r30, r0
/* 803CF398  3B A0 00 00 */	li r29, 0
/* 803CF39C  3B E0 00 00 */	li r31, 0
lbl_803CF3A0:
/* 803CF3A0  A0 9B 00 00 */	lhz r4, 0(r27)
/* 803CF3A4  7F 83 E3 78 */	mr r3, r28
/* 803CF3A8  7F C5 F3 78 */	mr r5, r30
/* 803CF3AC  4B FF FB DD */	bl mNpc_SetDefAnimal
/* 803CF3B0  9B FC 08 98 */	stb r31, 0x898(r28)
/* 803CF3B4  3B BD 00 01 */	addi r29, r29, 1
/* 803CF3B8  2C 1D 00 0F */	cmpwi r29, 0xf
/* 803CF3BC  80 1B 00 04 */	lwz r0, 4(r27)
/* 803CF3C0  98 1C 08 99 */	stb r0, 0x899(r28)
/* 803CF3C4  80 1B 00 08 */	lwz r0, 8(r27)
/* 803CF3C8  98 1C 08 9A */	stb r0, 0x89a(r28)
/* 803CF3CC  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 803CF3D0  98 1C 08 9B */	stb r0, 0x89b(r28)
/* 803CF3D4  80 1B 00 10 */	lwz r0, 0x10(r27)
/* 803CF3D8  3B 7B 00 14 */	addi r27, r27, 0x14
/* 803CF3DC  98 1C 08 9C */	stb r0, 0x89c(r28)
/* 803CF3E0  3B 9C 09 88 */	addi r28, r28, 0x988
/* 803CF3E4  41 80 FF BC */	blt lbl_803CF3A0
/* 803CF3E8  39 61 00 20 */	addi r11, r1, 0x20
/* 803CF3EC  4B CC BB 2D */	bl func_8009AF18
/* 803CF3F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CF3F4  7C 08 03 A6 */	mtlr r0
/* 803CF3F8  38 21 00 20 */	addi r1, r1, 0x20
/* 803CF3FC  4E 80 00 20 */	blr 
