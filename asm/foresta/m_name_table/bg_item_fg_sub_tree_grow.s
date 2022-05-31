lbl_803C935C:
/* 803C935C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803C9360  28 00 08 00 */	cmplwi r0, 0x800
/* 803C9364  41 80 00 0C */	blt lbl_803C9370
/* 803C9368  28 00 08 3B */	cmplwi r0, 0x83b
/* 803C936C  40 81 00 40 */	ble lbl_803C93AC
lbl_803C9370:
/* 803C9370  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803C9374  28 00 08 4F */	cmplwi r0, 0x84f
/* 803C9378  41 80 00 0C */	blt lbl_803C9384
/* 803C937C  28 00 08 5B */	cmplwi r0, 0x85b
/* 803C9380  40 81 00 2C */	ble lbl_803C93AC
lbl_803C9384:
/* 803C9384  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803C9388  28 00 08 5D */	cmplwi r0, 0x85d
/* 803C938C  41 80 00 0C */	blt lbl_803C9398
/* 803C9390  28 00 08 61 */	cmplwi r0, 0x861
/* 803C9394  40 81 00 18 */	ble lbl_803C93AC
lbl_803C9398:
/* 803C9398  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803C939C  28 00 08 63 */	cmplwi r0, 0x863
/* 803C93A0  4D 80 00 20 */	bltlr 
/* 803C93A4  28 00 08 68 */	cmplwi r0, 0x868
/* 803C93A8  4D 81 00 20 */	bgtlr 
lbl_803C93AC:
/* 803C93AC  54 66 04 3E */	clrlwi r6, r3, 0x10
/* 803C93B0  28 06 08 54 */	cmplwi r6, 0x854
/* 803C93B4  41 80 00 14 */	blt lbl_803C93C8
/* 803C93B8  28 06 08 5B */	cmplwi r6, 0x85b
/* 803C93BC  41 81 00 0C */	bgt lbl_803C93C8
/* 803C93C0  38 E6 F7 ED */	addi r7, r6, -2067
/* 803C93C4  48 00 00 60 */	b lbl_803C9424
lbl_803C93C8:
/* 803C93C8  54 66 04 3E */	clrlwi r6, r3, 0x10
/* 803C93CC  28 06 08 5D */	cmplwi r6, 0x85d
/* 803C93D0  41 80 00 14 */	blt lbl_803C93E4
/* 803C93D4  28 06 08 61 */	cmplwi r6, 0x861
/* 803C93D8  41 81 00 0C */	bgt lbl_803C93E4
/* 803C93DC  38 E6 F7 EC */	addi r7, r6, -2068
/* 803C93E0  48 00 00 44 */	b lbl_803C9424
lbl_803C93E4:
/* 803C93E4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803C93E8  28 00 08 68 */	cmplwi r0, 0x868
/* 803C93EC  41 82 00 14 */	beq lbl_803C9400
/* 803C93F0  28 00 08 63 */	cmplwi r0, 0x863
/* 803C93F4  41 80 00 18 */	blt lbl_803C940C
/* 803C93F8  28 00 08 67 */	cmplwi r0, 0x867
/* 803C93FC  41 81 00 10 */	bgt lbl_803C940C
lbl_803C9400:
/* 803C9400  54 66 04 3E */	clrlwi r6, r3, 0x10
/* 803C9404  38 E6 F7 EB */	addi r7, r6, -2069
/* 803C9408  48 00 00 1C */	b lbl_803C9424
lbl_803C940C:
/* 803C940C  54 66 04 3E */	clrlwi r6, r3, 0x10
/* 803C9410  28 06 08 4F */	cmplwi r6, 0x84f
/* 803C9414  41 80 00 0C */	blt lbl_803C9420
/* 803C9418  38 E6 F7 ED */	addi r7, r6, -2067
/* 803C941C  48 00 00 08 */	b lbl_803C9424
lbl_803C9420:
/* 803C9420  38 E6 F8 00 */	addi r7, r6, -2048
lbl_803C9424:
/* 803C9424  3C C0 80 66 */	lis r6, grow_check@ha /* 0x8065A910@ha */
/* 803C9428  38 04 00 01 */	addi r0, r4, 1
/* 803C942C  38 C6 A9 10 */	addi r6, r6, grow_check@l /* 0x8065A910@l */
/* 803C9430  7C 09 03 A6 */	mtctr r0
/* 803C9434  2C 04 00 00 */	cmpwi r4, 0
/* 803C9438  4D 80 00 20 */	bltlr 
lbl_803C943C:
/* 803C943C  54 E0 10 3A */	slwi r0, r7, 2
/* 803C9440  7C 06 02 AE */	lhax r0, r6, r0
/* 803C9444  7D 00 00 D0 */	neg r8, r0
/* 803C9448  7C 07 42 14 */	add r0, r7, r8
/* 803C944C  54 00 10 3A */	slwi r0, r0, 2
/* 803C9450  7C 86 02 14 */	add r4, r6, r0
/* 803C9454  A8 04 00 02 */	lha r0, 2(r4)
/* 803C9458  7C 00 28 00 */	cmpw r0, r5
/* 803C945C  4D 81 00 20 */	bgtlr 
/* 803C9460  7C 03 42 14 */	add r0, r3, r8
/* 803C9464  7C E7 42 14 */	add r7, r7, r8
/* 803C9468  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803C946C  42 00 FF D0 */	bdnz lbl_803C943C
/* 803C9470  4E 80 00 20 */	blr 
