lbl_8049A430:
/* 8049A430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049A434  7C 08 02 A6 */	mflr r0
/* 8049A438  2C 05 00 00 */	cmpwi r5, 0
/* 8049A43C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049A440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049A444  7C 9F 23 78 */	mr r31, r4
/* 8049A448  93 C1 00 08 */	stw r30, 8(r1)
/* 8049A44C  7C 7E 1B 78 */	mr r30, r3
/* 8049A450  40 82 00 48 */	bne lbl_8049A498
/* 8049A454  4B F2 05 45 */	bl mEnv_NowWeather
/* 8049A458  2C 03 00 01 */	cmpwi r3, 1
/* 8049A45C  40 82 00 3C */	bne lbl_8049A498
/* 8049A460  2C 1F 00 02 */	cmpwi r31, 2
/* 8049A464  41 82 00 34 */	beq lbl_8049A498
/* 8049A468  80 1E 01 40 */	lwz r0, 0x140(r30)
/* 8049A46C  3C 60 80 69 */	lis r3, kaseki_data@ha /* 0x8068CCC0@ha */
/* 8049A470  38 83 CC C0 */	addi r4, r3, kaseki_data@l /* 0x8068CCC0@l */
/* 8049A474  54 05 18 38 */	slwi r5, r0, 3
/* 8049A478  80 64 00 00 */	lwz r3, 0(r4)
/* 8049A47C  80 04 00 04 */	lwz r0, 4(r4)
/* 8049A480  7C 9E 2A 14 */	add r4, r30, r5
/* 8049A484  90 64 00 00 */	stw r3, 0(r4)
/* 8049A488  90 04 00 04 */	stw r0, 4(r4)
/* 8049A48C  80 7E 01 40 */	lwz r3, 0x140(r30)
/* 8049A490  38 03 00 01 */	addi r0, r3, 1
/* 8049A494  90 1E 01 40 */	stw r0, 0x140(r30)
lbl_8049A498:
/* 8049A498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049A49C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049A4A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049A4A4  7C 08 03 A6 */	mtlr r0
/* 8049A4A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8049A4AC  4E 80 00 20 */	blr 
