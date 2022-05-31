lbl_803C908C:
/* 803C908C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C9090  7C 08 02 A6 */	mflr r0
/* 803C9094  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C9098  39 61 00 20 */	addi r11, r1, 0x20
/* 803C909C  4B CD 1E 39 */	bl func_8009AED4
/* 803C90A0  7C 7F 1B 78 */	mr r31, r3
/* 803C90A4  7C 9D 23 78 */	mr r29, r4
/* 803C90A8  54 7E 04 3E */	clrlwi r30, r3, 0x10
/* 803C90AC  7F C3 F3 78 */	mr r3, r30
/* 803C90B0  48 00 05 39 */	bl FGTreeType_check
/* 803C90B4  7F A0 07 35 */	extsh. r0, r29
/* 803C90B8  7F C5 F3 78 */	mr r5, r30
/* 803C90BC  41 82 00 08 */	beq lbl_803C90C4
/* 803C90C0  48 00 02 80 */	b lbl_803C9340
lbl_803C90C4:
/* 803C90C4  7F C4 F3 78 */	mr r4, r30
/* 803C90C8  28 04 08 04 */	cmplwi r4, 0x804
/* 803C90CC  41 82 00 E4 */	beq lbl_803C91B0
/* 803C90D0  28 04 08 31 */	cmplwi r4, 0x831
/* 803C90D4  41 82 00 DC */	beq lbl_803C91B0
/* 803C90D8  28 04 08 36 */	cmplwi r4, 0x836
/* 803C90DC  41 82 00 D4 */	beq lbl_803C91B0
/* 803C90E0  28 04 08 3B */	cmplwi r4, 0x83b
/* 803C90E4  41 82 00 CC */	beq lbl_803C91B0
/* 803C90E8  28 04 08 53 */	cmplwi r4, 0x853
/* 803C90EC  41 82 00 C4 */	beq lbl_803C91B0
/* 803C90F0  28 04 08 61 */	cmplwi r4, 0x861
/* 803C90F4  41 82 00 BC */	beq lbl_803C91B0
/* 803C90F8  38 1F F7 99 */	addi r0, r31, -2151
/* 803C90FC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803C9100  28 00 00 01 */	cmplwi r0, 1
/* 803C9104  40 81 00 AC */	ble lbl_803C91B0
/* 803C9108  38 1F F7 F7 */	addi r0, r31, -2057
/* 803C910C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803C9110  28 00 00 03 */	cmplwi r0, 3
/* 803C9114  40 81 00 9C */	ble lbl_803C91B0
/* 803C9118  38 1F F7 EF */	addi r0, r31, -2065
/* 803C911C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803C9120  28 00 00 03 */	cmplwi r0, 3
/* 803C9124  40 81 00 8C */	ble lbl_803C91B0
/* 803C9128  38 1F F7 E7 */	addi r0, r31, -2073
/* 803C912C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803C9130  28 00 00 03 */	cmplwi r0, 3
/* 803C9134  40 81 00 7C */	ble lbl_803C91B0
/* 803C9138  38 1F F7 DF */	addi r0, r31, -2081
/* 803C913C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803C9140  28 00 00 03 */	cmplwi r0, 3
/* 803C9144  40 81 00 6C */	ble lbl_803C91B0
/* 803C9148  38 1F F7 D7 */	addi r0, r31, -2089
/* 803C914C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803C9150  28 00 00 03 */	cmplwi r0, 3
/* 803C9154  40 81 00 5C */	ble lbl_803C91B0
/* 803C9158  38 1F F7 A8 */	addi r0, r31, -2136
/* 803C915C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803C9160  28 00 00 03 */	cmplwi r0, 3
/* 803C9164  40 81 00 4C */	ble lbl_803C91B0
/* 803C9168  38 1F FF A2 */	addi r0, r31, -94
/* 803C916C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803C9170  28 00 00 03 */	cmplwi r0, 3
/* 803C9174  40 81 00 3C */	ble lbl_803C91B0
/* 803C9178  28 04 00 69 */	cmplwi r4, 0x69
/* 803C917C  41 82 00 34 */	beq lbl_803C91B0
/* 803C9180  38 1F FF 88 */	addi r0, r31, -120
/* 803C9184  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803C9188  28 00 00 02 */	cmplwi r0, 2
/* 803C918C  40 81 00 24 */	ble lbl_803C91B0
/* 803C9190  28 04 00 82 */	cmplwi r4, 0x82
/* 803C9194  41 82 00 1C */	beq lbl_803C91B0
/* 803C9198  38 1F FF 81 */	addi r0, r31, -127
/* 803C919C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803C91A0  28 00 00 01 */	cmplwi r0, 1
/* 803C91A4  40 81 00 0C */	ble lbl_803C91B0
/* 803C91A8  28 04 00 81 */	cmplwi r4, 0x81
/* 803C91AC  40 82 00 18 */	bne lbl_803C91C4
lbl_803C91B0:
/* 803C91B0  3C 80 80 66 */	lis r4, cnvfg@ha /* 0x8065A8F0@ha */
/* 803C91B4  54 60 08 3C */	slwi r0, r3, 1
/* 803C91B8  38 64 A8 F0 */	addi r3, r4, cnvfg@l /* 0x8065A8F0@l */
/* 803C91BC  7C A3 02 2E */	lhzx r5, r3, r0
/* 803C91C0  48 00 01 80 */	b lbl_803C9340
lbl_803C91C4:
/* 803C91C4  28 04 08 03 */	cmplwi r4, 0x803
/* 803C91C8  41 82 00 64 */	beq lbl_803C922C
/* 803C91CC  28 04 08 08 */	cmplwi r4, 0x808
/* 803C91D0  41 82 00 5C */	beq lbl_803C922C
/* 803C91D4  28 04 08 10 */	cmplwi r4, 0x810
/* 803C91D8  41 82 00 54 */	beq lbl_803C922C
/* 803C91DC  28 04 08 18 */	cmplwi r4, 0x818
/* 803C91E0  41 82 00 4C */	beq lbl_803C922C
/* 803C91E4  28 04 08 20 */	cmplwi r4, 0x820
/* 803C91E8  41 82 00 44 */	beq lbl_803C922C
/* 803C91EC  28 04 08 28 */	cmplwi r4, 0x828
/* 803C91F0  41 82 00 3C */	beq lbl_803C922C
/* 803C91F4  28 04 08 30 */	cmplwi r4, 0x830
/* 803C91F8  41 82 00 34 */	beq lbl_803C922C
/* 803C91FC  28 04 08 35 */	cmplwi r4, 0x835
/* 803C9200  41 82 00 2C */	beq lbl_803C922C
/* 803C9204  28 04 08 3A */	cmplwi r4, 0x83a
/* 803C9208  41 82 00 24 */	beq lbl_803C922C
/* 803C920C  28 04 08 52 */	cmplwi r4, 0x852
/* 803C9210  41 82 00 1C */	beq lbl_803C922C
/* 803C9214  28 04 08 57 */	cmplwi r4, 0x857
/* 803C9218  41 82 00 14 */	beq lbl_803C922C
/* 803C921C  28 04 08 60 */	cmplwi r4, 0x860
/* 803C9220  41 82 00 0C */	beq lbl_803C922C
/* 803C9224  28 04 08 66 */	cmplwi r4, 0x866
/* 803C9228  40 82 00 1C */	bne lbl_803C9244
lbl_803C922C:
/* 803C922C  3C 80 80 66 */	lis r4, cnvfg@ha /* 0x8065A8F0@ha */
/* 803C9230  54 60 08 3C */	slwi r0, r3, 1
/* 803C9234  38 64 A8 F0 */	addi r3, r4, cnvfg@l /* 0x8065A8F0@l */
/* 803C9238  7C 63 02 14 */	add r3, r3, r0
/* 803C923C  A0 A3 00 08 */	lhz r5, 8(r3)
/* 803C9240  48 00 01 00 */	b lbl_803C9340
lbl_803C9244:
/* 803C9244  28 04 08 02 */	cmplwi r4, 0x802
/* 803C9248  41 82 00 64 */	beq lbl_803C92AC
/* 803C924C  28 04 08 07 */	cmplwi r4, 0x807
/* 803C9250  41 82 00 5C */	beq lbl_803C92AC
/* 803C9254  28 04 08 0F */	cmplwi r4, 0x80f
/* 803C9258  41 82 00 54 */	beq lbl_803C92AC
/* 803C925C  28 04 08 17 */	cmplwi r4, 0x817
/* 803C9260  41 82 00 4C */	beq lbl_803C92AC
/* 803C9264  28 04 08 1F */	cmplwi r4, 0x81f
/* 803C9268  41 82 00 44 */	beq lbl_803C92AC
/* 803C926C  28 04 08 27 */	cmplwi r4, 0x827
/* 803C9270  41 82 00 3C */	beq lbl_803C92AC
/* 803C9274  28 04 08 2F */	cmplwi r4, 0x82f
/* 803C9278  41 82 00 34 */	beq lbl_803C92AC
/* 803C927C  28 04 08 34 */	cmplwi r4, 0x834
/* 803C9280  41 82 00 2C */	beq lbl_803C92AC
/* 803C9284  28 04 08 39 */	cmplwi r4, 0x839
/* 803C9288  41 82 00 24 */	beq lbl_803C92AC
/* 803C928C  28 04 08 51 */	cmplwi r4, 0x851
/* 803C9290  41 82 00 1C */	beq lbl_803C92AC
/* 803C9294  28 04 08 56 */	cmplwi r4, 0x856
/* 803C9298  41 82 00 14 */	beq lbl_803C92AC
/* 803C929C  28 04 08 5F */	cmplwi r4, 0x85f
/* 803C92A0  41 82 00 0C */	beq lbl_803C92AC
/* 803C92A4  28 04 08 65 */	cmplwi r4, 0x865
/* 803C92A8  40 82 00 1C */	bne lbl_803C92C4
lbl_803C92AC:
/* 803C92AC  3C 80 80 66 */	lis r4, cnvfg@ha /* 0x8065A8F0@ha */
/* 803C92B0  54 60 08 3C */	slwi r0, r3, 1
/* 803C92B4  38 64 A8 F0 */	addi r3, r4, cnvfg@l /* 0x8065A8F0@l */
/* 803C92B8  7C 63 02 14 */	add r3, r3, r0
/* 803C92BC  A0 A3 00 10 */	lhz r5, 0x10(r3)
/* 803C92C0  48 00 00 80 */	b lbl_803C9340
lbl_803C92C4:
/* 803C92C4  28 04 08 01 */	cmplwi r4, 0x801
/* 803C92C8  41 82 00 64 */	beq lbl_803C932C
/* 803C92CC  28 04 08 06 */	cmplwi r4, 0x806
/* 803C92D0  41 82 00 5C */	beq lbl_803C932C
/* 803C92D4  28 04 08 0E */	cmplwi r4, 0x80e
/* 803C92D8  41 82 00 54 */	beq lbl_803C932C
/* 803C92DC  28 04 08 16 */	cmplwi r4, 0x816
/* 803C92E0  41 82 00 4C */	beq lbl_803C932C
/* 803C92E4  28 04 08 1E */	cmplwi r4, 0x81e
/* 803C92E8  41 82 00 44 */	beq lbl_803C932C
/* 803C92EC  28 04 08 26 */	cmplwi r4, 0x826
/* 803C92F0  41 82 00 3C */	beq lbl_803C932C
/* 803C92F4  28 04 08 2E */	cmplwi r4, 0x82e
/* 803C92F8  41 82 00 34 */	beq lbl_803C932C
/* 803C92FC  28 04 08 33 */	cmplwi r4, 0x833
/* 803C9300  41 82 00 2C */	beq lbl_803C932C
/* 803C9304  28 04 08 38 */	cmplwi r4, 0x838
/* 803C9308  41 82 00 24 */	beq lbl_803C932C
/* 803C930C  28 04 08 50 */	cmplwi r4, 0x850
/* 803C9310  41 82 00 1C */	beq lbl_803C932C
/* 803C9314  28 04 08 55 */	cmplwi r4, 0x855
/* 803C9318  41 82 00 14 */	beq lbl_803C932C
/* 803C931C  28 04 08 5E */	cmplwi r4, 0x85e
/* 803C9320  41 82 00 0C */	beq lbl_803C932C
/* 803C9324  28 04 08 64 */	cmplwi r4, 0x864
/* 803C9328  40 82 00 18 */	bne lbl_803C9340
lbl_803C932C:
/* 803C932C  3C 80 80 66 */	lis r4, cnvfg@ha /* 0x8065A8F0@ha */
/* 803C9330  54 60 08 3C */	slwi r0, r3, 1
/* 803C9334  38 64 A8 F0 */	addi r3, r4, cnvfg@l /* 0x8065A8F0@l */
/* 803C9338  7C 63 02 14 */	add r3, r3, r0
/* 803C933C  A0 A3 00 18 */	lhz r5, 0x18(r3)
lbl_803C9340:
/* 803C9340  7C A3 2B 78 */	mr r3, r5
/* 803C9344  39 61 00 20 */	addi r11, r1, 0x20
/* 803C9348  4B CD 1B D9 */	bl func_8009AF20
/* 803C934C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C9350  7C 08 03 A6 */	mtlr r0
/* 803C9354  38 21 00 20 */	addi r1, r1, 0x20
/* 803C9358  4E 80 00 20 */	blr 
