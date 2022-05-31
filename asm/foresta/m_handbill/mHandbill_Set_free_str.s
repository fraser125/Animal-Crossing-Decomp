lbl_803B1958:
/* 803B1958  2C 03 00 00 */	cmpwi r3, 0
/* 803B195C  4D 80 00 20 */	bltlr 
/* 803B1960  2C 03 00 14 */	cmpwi r3, 0x14
/* 803B1964  4C 80 00 20 */	bgelr 
/* 803B1968  28 04 00 00 */	cmplwi r4, 0
/* 803B196C  4D 82 00 20 */	beqlr 
/* 803B1970  3C C0 81 16 */	lis r6, mHandbill_data@ha /* 0x81167DD8@ha */
/* 803B1974  2C 05 00 10 */	cmpwi r5, 0x10
/* 803B1978  38 E6 7D D8 */	addi r7, r6, mHandbill_data@l /* 0x81167DD8@l */
/* 803B197C  54 60 20 36 */	slwi r0, r3, 4
/* 803B1980  7D 27 02 14 */	add r9, r7, r0
/* 803B1984  40 81 00 08 */	ble lbl_803B198C
/* 803B1988  38 A0 00 10 */	li r5, 0x10
lbl_803B198C:
/* 803B198C  7D 26 4B 78 */	mr r6, r9
/* 803B1990  39 00 00 00 */	li r8, 0
/* 803B1994  7C A9 03 A6 */	mtctr r5
/* 803B1998  2C 05 00 00 */	cmpwi r5, 0
/* 803B199C  40 81 00 1C */	ble lbl_803B19B8
lbl_803B19A0:
/* 803B19A0  88 04 00 00 */	lbz r0, 0(r4)
/* 803B19A4  39 08 00 01 */	addi r8, r8, 1
/* 803B19A8  38 84 00 01 */	addi r4, r4, 1
/* 803B19AC  98 06 00 00 */	stb r0, 0(r6)
/* 803B19B0  38 C6 00 01 */	addi r6, r6, 1
/* 803B19B4  42 00 FF EC */	bdnz lbl_803B19A0
lbl_803B19B8:
/* 803B19B8  20 08 00 10 */	subfic r0, r8, 0x10
/* 803B19BC  7C 89 42 14 */	add r4, r9, r8
/* 803B19C0  38 A0 00 20 */	li r5, 0x20
/* 803B19C4  7C 09 03 A6 */	mtctr r0
/* 803B19C8  2C 08 00 10 */	cmpwi r8, 0x10
/* 803B19CC  40 80 00 10 */	bge lbl_803B19DC
lbl_803B19D0:
/* 803B19D0  98 A4 00 00 */	stb r5, 0(r4)
/* 803B19D4  38 84 00 01 */	addi r4, r4, 1
/* 803B19D8  42 00 FF F8 */	bdnz lbl_803B19D0
lbl_803B19DC:
/* 803B19DC  54 60 10 3A */	slwi r0, r3, 2
/* 803B19E0  38 80 00 00 */	li r4, 0
/* 803B19E4  7C 67 02 14 */	add r3, r7, r0
/* 803B19E8  90 83 01 40 */	stw r4, 0x140(r3)
/* 803B19EC  4E 80 00 20 */	blr 
