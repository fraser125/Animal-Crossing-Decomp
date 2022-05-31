lbl_8042A2F0:
/* 8042A2F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042A2F4  7C 08 02 A6 */	mflr r0
/* 8042A2F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042A2FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042A300  7C 7F 1B 78 */	mr r31, r3
/* 8042A304  4B FF FE D5 */	bl aHC_SetClockNum
/* 8042A308  2C 03 00 00 */	cmpwi r3, 0
/* 8042A30C  41 82 00 68 */	beq lbl_8042A374
/* 8042A310  7F E3 FB 78 */	mr r3, r31
/* 8042A314  4B FF FF 59 */	bl aHC_InitClockAnimation
/* 8042A318  A8 1F 01 78 */	lha r0, 0x178(r31)
/* 8042A31C  3C 80 80 68 */	lis r4, aHC_position_data@ha /* 0x80684050@ha */
/* 8042A320  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8042A324  38 84 40 50 */	addi r4, r4, aHC_position_data@l /* 0x80684050@l */
/* 8042A328  54 00 20 36 */	slwi r0, r0, 4
/* 8042A32C  7C A4 02 14 */	add r5, r4, r0
/* 8042A330  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8042A334  80 85 00 04 */	lwz r4, 4(r5)
/* 8042A338  3C 63 00 03 */	addis r3, r3, 3
/* 8042A33C  80 05 00 08 */	lwz r0, 8(r5)
/* 8042A340  90 9F 01 7C */	stw r4, 0x17c(r31)
/* 8042A344  90 1F 01 80 */	stw r0, 0x180(r31)
/* 8042A348  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8042A34C  90 1F 01 84 */	stw r0, 0x184(r31)
/* 8042A350  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 8042A354  2C 00 00 03 */	cmpwi r0, 3
/* 8042A358  40 82 00 1C */	bne lbl_8042A374
/* 8042A35C  A8 1F 01 78 */	lha r0, 0x178(r31)
/* 8042A360  2C 00 00 04 */	cmpwi r0, 4
/* 8042A364  41 81 00 10 */	bgt lbl_8042A374
/* 8042A368  3C 60 80 43 */	lis r3, func_8042A1D0@ha /* 0x8042A1D0@ha */
/* 8042A36C  38 03 A1 D0 */	addi r0, r3, func_8042A1D0@l /* 0x8042A1D0@l */
/* 8042A370  90 1F 01 68 */	stw r0, 0x168(r31)
lbl_8042A374:
/* 8042A374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042A378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042A37C  7C 08 03 A6 */	mtlr r0
/* 8042A380  38 21 00 10 */	addi r1, r1, 0x10
/* 8042A384  4E 80 00 20 */	blr 
