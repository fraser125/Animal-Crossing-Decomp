lbl_803D70C4:
/* 803D70C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D70C8  7C 08 02 A6 */	mflr r0
/* 803D70CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D70D0  39 61 00 20 */	addi r11, r1, 0x20
/* 803D70D4  4B CC 3D FD */	bl func_8009AED0
/* 803D70D8  3C 80 81 17 */	lis r4, l_mnpc_addd@ha /* 0x8116ED68@ha */
/* 803D70DC  3C A0 80 66 */	lis r5, data_8065ADE8@ha /* 0x8065ADE8@ha */
/* 803D70E0  83 84 ED 68 */	lwz r28, l_mnpc_addd@l(r4)  /* 0x8116ED68@l */
/* 803D70E4  3B E5 AD E8 */	addi r31, r5, data_8065ADE8@l /* 0x8065ADE8@l */
/* 803D70E8  7C 7E 1B 78 */	mr r30, r3
/* 803D70EC  38 80 00 FA */	li r4, 0xfa
/* 803D70F0  38 A0 00 64 */	li r5, 0x64
/* 803D70F4  38 C0 00 AA */	li r6, 0xaa
/* 803D70F8  38 E0 00 FF */	li r7, 0xff
/* 803D70FC  4B C8 40 A5 */	bl gfxprint_color
/* 803D7100  7F C3 F3 78 */	mr r3, r30
/* 803D7104  38 80 00 03 */	li r4, 3
/* 803D7108  38 A0 00 12 */	li r5, 0x12
/* 803D710C  4B C8 41 05 */	bl gfxprint_locate8x8
/* 803D7110  2C 1C 00 00 */	cmpwi r28, 0
/* 803D7114  40 82 00 24 */	bne lbl_803D7138
/* 803D7118  3C 80 81 17 */	lis r4, l_mnpc_addd@ha /* 0x8116ED68@ha */
/* 803D711C  7F C3 F3 78 */	mr r3, r30
/* 803D7120  38 A4 ED 68 */	addi r5, r4, l_mnpc_addd@l /* 0x8116ED68@l */
/* 803D7124  38 9F 06 88 */	addi r4, r31, 0x688
/* 803D7128  80 A5 00 00 */	lwz r5, 0(r5)
/* 803D712C  4C C6 31 82 */	crclr 6
/* 803D7130  4B C8 47 ED */	bl gfxprint_printf
/* 803D7134  48 00 01 6C */	b lbl_803D72A0
lbl_803D7138:
/* 803D7138  2C 1C 00 01 */	cmpwi r28, 1
/* 803D713C  40 82 00 24 */	bne lbl_803D7160
/* 803D7140  3C 80 81 17 */	lis r4, l_mnpc_addd@ha /* 0x8116ED68@ha */
/* 803D7144  7F C3 F3 78 */	mr r3, r30
/* 803D7148  38 A4 ED 68 */	addi r5, r4, l_mnpc_addd@l /* 0x8116ED68@l */
/* 803D714C  38 9F 06 A4 */	addi r4, r31, 0x6a4
/* 803D7150  80 A5 00 00 */	lwz r5, 0(r5)
/* 803D7154  4C C6 31 82 */	crclr 6
/* 803D7158  4B C8 47 C5 */	bl gfxprint_printf
/* 803D715C  48 00 01 44 */	b lbl_803D72A0
lbl_803D7160:
/* 803D7160  2C 1C 00 02 */	cmpwi r28, 2
/* 803D7164  40 82 00 24 */	bne lbl_803D7188
/* 803D7168  3C 80 81 17 */	lis r4, l_mnpc_addd@ha /* 0x8116ED68@ha */
/* 803D716C  7F C3 F3 78 */	mr r3, r30
/* 803D7170  38 A4 ED 68 */	addi r5, r4, l_mnpc_addd@l /* 0x8116ED68@l */
/* 803D7174  38 9F 06 C0 */	addi r4, r31, 0x6c0
/* 803D7178  80 A5 00 00 */	lwz r5, 0(r5)
/* 803D717C  4C C6 31 82 */	crclr 6
/* 803D7180  4B C8 47 9D */	bl gfxprint_printf
/* 803D7184  48 00 01 1C */	b lbl_803D72A0
lbl_803D7188:
/* 803D7188  3C 80 81 17 */	lis r4, l_mnpc_addd@ha /* 0x8116ED68@ha */
/* 803D718C  7F C3 F3 78 */	mr r3, r30
/* 803D7190  38 A4 ED 68 */	addi r5, r4, l_mnpc_addd@l /* 0x8116ED68@l */
/* 803D7194  38 9F 06 DC */	addi r4, r31, 0x6dc
/* 803D7198  88 A5 00 06 */	lbz r5, 6(r5)
/* 803D719C  4C C6 31 82 */	crclr 6
/* 803D71A0  4B C8 47 7D */	bl gfxprint_printf
/* 803D71A4  3C 60 81 17 */	lis r3, l_mnpc_addd@ha /* 0x8116ED68@ha */
/* 803D71A8  3B 80 00 00 */	li r28, 0
/* 803D71AC  3B A3 ED 68 */	addi r29, r3, l_mnpc_addd@l /* 0x8116ED68@l */
lbl_803D71B0:
/* 803D71B0  A0 1D 00 04 */	lhz r0, 4(r29)
/* 803D71B4  7F C3 F3 78 */	mr r3, r30
/* 803D71B8  38 9F 06 E4 */	addi r4, r31, 0x6e4
/* 803D71BC  7C 00 E6 30 */	sraw r0, r0, r28
/* 803D71C0  54 05 07 FE */	clrlwi r5, r0, 0x1f
/* 803D71C4  4C C6 31 82 */	crclr 6
/* 803D71C8  4B C8 47 55 */	bl gfxprint_printf
/* 803D71CC  3B 9C 00 01 */	addi r28, r28, 1
/* 803D71D0  2C 1C 00 0F */	cmpwi r28, 0xf
/* 803D71D4  41 80 FF DC */	blt lbl_803D71B0
/* 803D71D8  7F C3 F3 78 */	mr r3, r30
/* 803D71DC  38 80 00 03 */	li r4, 3
/* 803D71E0  38 A0 00 13 */	li r5, 0x13
/* 803D71E4  4B C8 40 2D */	bl gfxprint_locate8x8
/* 803D71E8  7F C3 F3 78 */	mr r3, r30
/* 803D71EC  38 9F 06 E8 */	addi r4, r31, 0x6e8
/* 803D71F0  4C C6 31 82 */	crclr 6
/* 803D71F4  4B C8 47 29 */	bl gfxprint_printf
/* 803D71F8  3C 60 81 17 */	lis r3, l_mnpc_addd@ha /* 0x8116ED68@ha */
/* 803D71FC  3B 80 00 00 */	li r28, 0
/* 803D7200  3B A3 ED 68 */	addi r29, r3, l_mnpc_addd@l /* 0x8116ED68@l */
lbl_803D7204:
/* 803D7204  88 1D 00 07 */	lbz r0, 7(r29)
/* 803D7208  7F C3 F3 78 */	mr r3, r30
/* 803D720C  38 9F 06 E4 */	addi r4, r31, 0x6e4
/* 803D7210  7C 00 E6 30 */	sraw r0, r0, r28
/* 803D7214  54 05 07 FE */	clrlwi r5, r0, 0x1f
/* 803D7218  4C C6 31 82 */	crclr 6
/* 803D721C  4B C8 47 01 */	bl gfxprint_printf
/* 803D7220  3B 9C 00 01 */	addi r28, r28, 1
/* 803D7224  2C 1C 00 08 */	cmpwi r28, 8
/* 803D7228  41 80 FF DC */	blt lbl_803D7204
/* 803D722C  7F C3 F3 78 */	mr r3, r30
/* 803D7230  38 9F 06 F4 */	addi r4, r31, 0x6f4
/* 803D7234  4C C6 31 82 */	crclr 6
/* 803D7238  4B C8 46 E5 */	bl gfxprint_printf
/* 803D723C  3C 60 81 17 */	lis r3, l_mnpc_addd@ha /* 0x8116ED68@ha */
/* 803D7240  3B 80 00 00 */	li r28, 0
/* 803D7244  3B A3 ED 68 */	addi r29, r3, l_mnpc_addd@l /* 0x8116ED68@l */
lbl_803D7248:
/* 803D7248  88 1D 00 08 */	lbz r0, 8(r29)
/* 803D724C  7F C3 F3 78 */	mr r3, r30
/* 803D7250  38 9F 06 E4 */	addi r4, r31, 0x6e4
/* 803D7254  7C 00 E6 30 */	sraw r0, r0, r28
/* 803D7258  54 05 07 FE */	clrlwi r5, r0, 0x1f
/* 803D725C  4C C6 31 82 */	crclr 6
/* 803D7260  4B C8 46 BD */	bl gfxprint_printf
/* 803D7264  3B 9C 00 01 */	addi r28, r28, 1
/* 803D7268  2C 1C 00 08 */	cmpwi r28, 8
/* 803D726C  41 80 FF DC */	blt lbl_803D7248
/* 803D7270  7F C3 F3 78 */	mr r3, r30
/* 803D7274  38 80 00 03 */	li r4, 3
/* 803D7278  38 A0 00 14 */	li r5, 0x14
/* 803D727C  4B C8 3F 95 */	bl gfxprint_locate8x8
/* 803D7280  3C 80 81 17 */	lis r4, l_mnpc_addd@ha /* 0x8116ED68@ha */
/* 803D7284  7F C3 F3 78 */	mr r3, r30
/* 803D7288  38 C4 ED 68 */	addi r6, r4, l_mnpc_addd@l /* 0x8116ED68@l */
/* 803D728C  38 9F 07 00 */	addi r4, r31, 0x700
/* 803D7290  80 A6 00 0C */	lwz r5, 0xc(r6)
/* 803D7294  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 803D7298  4C C6 31 82 */	crclr 6
/* 803D729C  4B C8 46 81 */	bl gfxprint_printf
lbl_803D72A0:
/* 803D72A0  39 61 00 20 */	addi r11, r1, 0x20
/* 803D72A4  4B CC 3C 79 */	bl func_8009AF1C
/* 803D72A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D72AC  7C 08 03 A6 */	mtlr r0
/* 803D72B0  38 21 00 20 */	addi r1, r1, 0x20
/* 803D72B4  4E 80 00 20 */	blr 
