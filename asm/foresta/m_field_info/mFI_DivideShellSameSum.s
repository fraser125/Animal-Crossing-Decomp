lbl_803AA6E8:
/* 803AA6E8  48 00 00 7C */	b lbl_803AA764
lbl_803AA6EC:
/* 803AA6EC  38 00 00 07 */	li r0, 7
/* 803AA6F0  7C 09 03 A6 */	mtctr r0
lbl_803AA6F4:
/* 803AA6F4  88 03 00 00 */	lbz r0, 0(r3)
/* 803AA6F8  28 00 00 00 */	cmplwi r0, 0
/* 803AA6FC  41 82 00 4C */	beq lbl_803AA748
/* 803AA700  88 05 00 00 */	lbz r0, 0(r5)
/* 803AA704  28 00 00 04 */	cmplwi r0, 4
/* 803AA708  40 80 00 40 */	bge lbl_803AA748
/* 803AA70C  89 04 00 00 */	lbz r8, 0(r4)
/* 803AA710  38 08 00 01 */	addi r0, r8, 1
/* 803AA714  98 04 00 00 */	stb r0, 0(r4)
/* 803AA718  89 05 00 00 */	lbz r8, 0(r5)
/* 803AA71C  38 08 00 01 */	addi r0, r8, 1
/* 803AA720  98 05 00 00 */	stb r0, 0(r5)
/* 803AA724  81 06 00 00 */	lwz r8, 0(r6)
/* 803AA728  38 08 FF FF */	addi r0, r8, -1
/* 803AA72C  90 06 00 00 */	stw r0, 0(r6)
/* 803AA730  88 05 00 00 */	lbz r0, 0(r5)
/* 803AA734  28 00 00 04 */	cmplwi r0, 4
/* 803AA738  41 80 00 10 */	blt lbl_803AA748
/* 803AA73C  81 07 00 00 */	lwz r8, 0(r7)
/* 803AA740  38 08 FF FF */	addi r0, r8, -1
/* 803AA744  90 07 00 00 */	stw r0, 0(r7)
lbl_803AA748:
/* 803AA748  38 84 00 01 */	addi r4, r4, 1
/* 803AA74C  38 A5 00 01 */	addi r5, r5, 1
/* 803AA750  38 63 00 01 */	addi r3, r3, 1
/* 803AA754  42 00 FF A0 */	bdnz lbl_803AA6F4
/* 803AA758  38 84 FF F9 */	addi r4, r4, -7
/* 803AA75C  38 A5 FF F9 */	addi r5, r5, -7
/* 803AA760  38 63 FF F9 */	addi r3, r3, -7
lbl_803AA764:
/* 803AA764  81 06 00 00 */	lwz r8, 0(r6)
/* 803AA768  2C 08 00 00 */	cmpwi r8, 0
/* 803AA76C  4C 81 00 20 */	blelr 
/* 803AA770  80 07 00 00 */	lwz r0, 0(r7)
/* 803AA774  2C 00 00 00 */	cmpwi r0, 0
/* 803AA778  4C 81 00 20 */	blelr 
/* 803AA77C  7C 08 00 00 */	cmpw r8, r0
/* 803AA780  41 81 FF 6C */	bgt lbl_803AA6EC
/* 803AA784  4E 80 00 20 */	blr 
