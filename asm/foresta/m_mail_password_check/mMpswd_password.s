lbl_803BE194:
/* 803BE194  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BE198  7C 08 02 A6 */	mflr r0
/* 803BE19C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BE1A0  39 61 00 20 */	addi r11, r1, 0x20
/* 803BE1A4  4B CD CD 31 */	bl func_8009AED4
/* 803BE1A8  7C 7D 1B 78 */	mr r29, r3
/* 803BE1AC  7C 9F 23 78 */	mr r31, r4
/* 803BE1B0  8B C3 00 00 */	lbz r30, 0(r3)
/* 803BE1B4  38 7F 00 07 */	addi r3, r31, 7
/* 803BE1B8  38 9D 00 02 */	addi r4, r29, 2
/* 803BE1BC  38 A0 00 08 */	li r5, 8
/* 803BE1C0  57 C0 EF BE */	rlwinm r0, r30, 0x1d, 0x1e, 0x1f
/* 803BE1C4  98 1F 00 06 */	stb r0, 6(r31)
/* 803BE1C8  4B C4 52 C9 */	bl memcpy
/* 803BE1CC  38 7F 00 0F */	addi r3, r31, 0xf
/* 803BE1D0  38 9D 00 0A */	addi r4, r29, 0xa
/* 803BE1D4  38 A0 00 08 */	li r5, 8
/* 803BE1D8  4B C4 52 B9 */	bl memcpy
/* 803BE1DC  88 9D 00 12 */	lbz r4, 0x12(r29)
/* 803BE1E0  57 C0 DF 7E */	rlwinm r0, r30, 0x1b, 0x1d, 0x1f
/* 803BE1E4  88 7D 00 13 */	lbz r3, 0x13(r29)
/* 803BE1E8  54 84 40 2E */	slwi r4, r4, 8
/* 803BE1EC  7C 64 1A 14 */	add r3, r4, r3
/* 803BE1F0  B0 7F 00 00 */	sth r3, 0(r31)
/* 803BE1F4  98 1F 00 04 */	stb r0, 4(r31)
/* 803BE1F8  88 1F 00 04 */	lbz r0, 4(r31)
/* 803BE1FC  2C 00 00 02 */	cmpwi r0, 2
/* 803BE200  41 82 00 3C */	beq lbl_803BE23C
/* 803BE204  40 80 00 10 */	bge lbl_803BE214
/* 803BE208  2C 00 00 01 */	cmpwi r0, 1
/* 803BE20C  40 80 00 14 */	bge lbl_803BE220
/* 803BE210  48 00 00 64 */	b lbl_803BE274
lbl_803BE214:
/* 803BE214  2C 00 00 04 */	cmpwi r0, 4
/* 803BE218  40 80 00 5C */	bge lbl_803BE274
/* 803BE21C  48 00 00 3C */	b lbl_803BE258
lbl_803BE220:
/* 803BE220  57 C3 FF BE */	rlwinm r3, r30, 0x1f, 0x1e, 0x1f
/* 803BE224  57 C0 07 FE */	clrlwi r0, r30, 0x1f
/* 803BE228  98 7F 00 05 */	stb r3, 5(r31)
/* 803BE22C  98 1F 00 02 */	stb r0, 2(r31)
/* 803BE230  88 1D 00 01 */	lbz r0, 1(r29)
/* 803BE234  98 1F 00 03 */	stb r0, 3(r31)
/* 803BE238  48 00 00 50 */	b lbl_803BE288
lbl_803BE23C:
/* 803BE23C  57 C3 FF BE */	rlwinm r3, r30, 0x1f, 0x1e, 0x1f
/* 803BE240  57 C0 07 FE */	clrlwi r0, r30, 0x1f
/* 803BE244  98 7F 00 05 */	stb r3, 5(r31)
/* 803BE248  98 1F 00 02 */	stb r0, 2(r31)
/* 803BE24C  88 1D 00 01 */	lbz r0, 1(r29)
/* 803BE250  98 1F 00 03 */	stb r0, 3(r31)
/* 803BE254  48 00 00 34 */	b lbl_803BE288
lbl_803BE258:
/* 803BE258  57 C3 17 7A */	rlwinm r3, r30, 2, 0x1d, 0x1d
/* 803BE25C  38 00 00 FF */	li r0, 0xff
/* 803BE260  53 C3 FF BE */	rlwimi r3, r30, 0x1f, 0x1e, 0x1f
/* 803BE264  98 7F 00 05 */	stb r3, 5(r31)
/* 803BE268  98 1F 00 02 */	stb r0, 2(r31)
/* 803BE26C  98 1F 00 03 */	stb r0, 3(r31)
/* 803BE270  48 00 00 18 */	b lbl_803BE288
lbl_803BE274:
/* 803BE274  57 C3 FF BE */	rlwinm r3, r30, 0x1f, 0x1e, 0x1f
/* 803BE278  38 00 00 FF */	li r0, 0xff
/* 803BE27C  98 7F 00 05 */	stb r3, 5(r31)
/* 803BE280  98 1F 00 02 */	stb r0, 2(r31)
/* 803BE284  98 1F 00 03 */	stb r0, 3(r31)
lbl_803BE288:
/* 803BE288  39 61 00 20 */	addi r11, r1, 0x20
/* 803BE28C  4B CD CC 95 */	bl func_8009AF20
/* 803BE290  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BE294  7C 08 03 A6 */	mtlr r0
/* 803BE298  38 21 00 20 */	addi r1, r1, 0x20
/* 803BE29C  4E 80 00 20 */	blr 
