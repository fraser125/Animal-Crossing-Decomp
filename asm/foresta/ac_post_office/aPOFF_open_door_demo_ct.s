lbl_805B8054:
/* 805B8054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B8058  7C 08 02 A6 */	mflr r0
/* 805B805C  3C 80 80 65 */	lis r4, lit_494@ha /* 0x8064AA40@ha */
/* 805B8060  38 60 00 05 */	li r3, 5
/* 805B8064  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B8068  C0 24 AA 40 */	lfs f1, lit_494@l(r4)  /* 0x8064AA40@l */
/* 805B806C  4B DE 12 85 */	bl mDemo_Set_house_info
/* 805B8070  38 60 00 07 */	li r3, 7
/* 805B8074  4B DE 08 AD */	bl mDemo_Set_camera
/* 805B8078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B807C  7C 08 03 A6 */	mtlr r0
/* 805B8080  38 21 00 10 */	addi r1, r1, 0x10
/* 805B8084  4E 80 00 20 */	blr 
