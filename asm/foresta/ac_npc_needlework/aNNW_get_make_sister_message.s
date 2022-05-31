lbl_8056178C:
/* 8056178C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80561790  7C 08 02 A6 */	mflr r0
/* 80561794  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80561798  3C 60 81 1F */	lis r3, struct_811ED318+0x1@ha /* 0x811ED319@ha */
/* 8056179C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805617A0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805617A4  38 00 00 00 */	li r0, 0
/* 805617A8  38 A0 00 00 */	li r5, 0
/* 805617AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805617B0  3C C4 00 02 */	addis r6, r4, 2
/* 805617B4  98 03 D3 19 */	stb r0, struct_811ED318+0x1@l(r3)  /* 0x811ED319@l */
/* 805617B8  80 86 61 3C */	lwz r4, 0x613c(r6)
/* 805617BC  A0 66 61 26 */	lhz r3, 0x6126(r6)
/* 805617C0  A0 04 23 B8 */	lhz r0, 0x23b8(r4)
/* 805617C4  7C 03 00 40 */	cmplw r3, r0
/* 805617C8  40 82 00 24 */	bne lbl_805617EC
/* 805617CC  88 66 61 25 */	lbz r3, 0x6125(r6)
/* 805617D0  88 04 23 BA */	lbz r0, 0x23ba(r4)
/* 805617D4  7C 03 00 40 */	cmplw r3, r0
/* 805617D8  40 82 00 14 */	bne lbl_805617EC
/* 805617DC  88 66 61 23 */	lbz r3, 0x6123(r6)
/* 805617E0  88 04 23 BB */	lbz r0, 0x23bb(r4)
/* 805617E4  7C 03 00 40 */	cmplw r3, r0
/* 805617E8  41 82 00 08 */	beq lbl_805617F0
lbl_805617EC:
/* 805617EC  38 A0 00 01 */	li r5, 1
lbl_805617F0:
/* 805617F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805617F4  88 04 23 BC */	lbz r0, 0x23bc(r4)
/* 805617F8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805617FC  3C 63 00 02 */	addis r3, r3, 2
/* 80561800  7F E0 2A 14 */	add r31, r0, r5
/* 80561804  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 80561808  28 00 00 04 */	cmplwi r0, 4
/* 8056180C  40 82 00 08 */	bne lbl_80561814
/* 80561810  3B E0 00 00 */	li r31, 0
lbl_80561814:
/* 80561814  2C 1F 00 04 */	cmpwi r31, 4
/* 80561818  40 80 00 2C */	bge lbl_80561844
/* 8056181C  4B AF B4 D9 */	bl fqrand
/* 80561820  3C 80 80 65 */	lis r4, data_8064977C@ha /* 0x8064977C@ha */
/* 80561824  3C 60 81 1F */	lis r3, struct_811ED318+0x0@ha /* 0x811ED318@ha */
/* 80561828  C0 04 97 7C */	lfs f0, data_8064977C@l(r4)  /* 0x8064977C@l */
/* 8056182C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80561830  FC 00 00 1E */	fctiwz f0, f0
/* 80561834  D8 01 00 08 */	stfd f0, 8(r1)
/* 80561838  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8056183C  98 03 D3 18 */	stb r0, struct_811ED318+0x0@l(r3)  /* 0x811ED318@l */
/* 80561840  48 00 00 98 */	b lbl_805618D8
lbl_80561844:
/* 80561844  2C 1F 00 08 */	cmpwi r31, 8
/* 80561848  41 80 00 30 */	blt lbl_80561878
/* 8056184C  4B AF B4 A9 */	bl fqrand
/* 80561850  3C 80 80 65 */	lis r4, lit_681@ha /* 0x80649780@ha */
/* 80561854  3C 60 81 1F */	lis r3, struct_811ED318+0x0@ha /* 0x811ED318@ha */
/* 80561858  C0 04 97 80 */	lfs f0, lit_681@l(r4)  /* 0x80649780@l */
/* 8056185C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80561860  FC 00 00 1E */	fctiwz f0, f0
/* 80561864  D8 01 00 08 */	stfd f0, 8(r1)
/* 80561868  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8056186C  38 04 00 15 */	addi r0, r4, 0x15
/* 80561870  98 03 D3 18 */	stb r0, struct_811ED318+0x0@l(r3)  /* 0x811ED318@l */
/* 80561874  48 00 00 64 */	b lbl_805618D8
lbl_80561878:
/* 80561878  2C 05 00 01 */	cmpwi r5, 1
/* 8056187C  40 82 00 20 */	bne lbl_8056189C
/* 80561880  3C 80 80 6C */	lis r4, aNNW_story_first_table@ha /* 0x806BDF78@ha */
/* 80561884  3C 60 81 1F */	lis r3, struct_811ED318+0x0@ha /* 0x811ED318@ha */
/* 80561888  38 04 DF 78 */	addi r0, r4, aNNW_story_first_table@l /* 0x806BDF78@l */
/* 8056188C  7C 80 FA 14 */	add r4, r0, r31
/* 80561890  88 04 FF FC */	lbz r0, -4(r4)
/* 80561894  98 03 D3 18 */	stb r0, struct_811ED318+0x0@l(r3)  /* 0x811ED318@l */
/* 80561898  48 00 00 40 */	b lbl_805618D8
lbl_8056189C:
/* 8056189C  4B AF B4 59 */	bl fqrand
/* 805618A0  3C 60 80 65 */	lis r3, lit_681@ha /* 0x80649780@ha */
/* 805618A4  3C 80 80 6C */	lis r4, aNNW_story_other_table@ha /* 0x806BDF7C@ha */
/* 805618A8  38 A3 97 80 */	addi r5, r3, lit_681@l /* 0x80649780@l */
/* 805618AC  C0 05 00 00 */	lfs f0, 0(r5)
/* 805618B0  38 04 DF 7C */	addi r0, r4, aNNW_story_other_table@l /* 0x806BDF7C@l */
/* 805618B4  7C 80 FA 14 */	add r4, r0, r31
/* 805618B8  3C 60 81 1F */	lis r3, struct_811ED318+0x0@ha /* 0x811ED318@ha */
/* 805618BC  EC 00 00 72 */	fmuls f0, f0, f1
/* 805618C0  88 04 FF FC */	lbz r0, -4(r4)
/* 805618C4  FC 00 00 1E */	fctiwz f0, f0
/* 805618C8  D8 01 00 08 */	stfd f0, 8(r1)
/* 805618CC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805618D0  7C 00 22 14 */	add r0, r0, r4
/* 805618D4  98 03 D3 18 */	stb r0, struct_811ED318+0x0@l(r3)  /* 0x811ED318@l */
lbl_805618D8:
/* 805618D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805618DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805618E0  7C 08 03 A6 */	mtlr r0
/* 805618E4  38 21 00 20 */	addi r1, r1, 0x20
/* 805618E8  4E 80 00 20 */	blr 
