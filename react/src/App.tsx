import React from "react";
import "./App.css";
import Box from "@mui/material/Box";
import Accordion from "@mui/material/Accordion";
import AccordionSummary from "@mui/material/AccordionSummary";
import AccordionDetails from "@mui/material/AccordionDetails";
import Typography from "@mui/material/Typography";
import ExpandMoreIcon from "@mui/icons-material/ExpandMore";
import Link from "@mui/material/Link";
import Radio from "@mui/material/Radio";
import RadioGroup from "@mui/material/RadioGroup";
import FormControlLabel from "@mui/material/FormControlLabel";
import FormControl from "@mui/material/FormControl";
import Checkbox from "@mui/material/Checkbox";
import FavoriteBorder from "@mui/icons-material/FavoriteBorder";
import Favorite from "@mui/icons-material/Favorite";
import ImageList from "@mui/material/ImageList";
import ImageListItem from "@mui/material/ImageListItem";

import bg from "./assets/Images/all_background_01.jpg";
import fondJaune from "./assets/Images/Parcours/parcours_fond_jaune_01.png";
import fondVert from "./assets/Images/Parcours/parcours_fond_vert_01.png";
import fontViolet from "./assets/Images/Parcours/parcours_fond_violet_01.png";
import perso1 from "./assets/Images/Quizz/quizz_chara_01.png";
import perso2 from "./assets/Images/Cartes/cartes_chara_01.png";
import carteFondJaune from "./assets/Images/Cartes/cartes_fond_titre_01.png";
import carteFondRose from "./assets/Images/Cartes/cartes_fond_like_01.png";
import carte from "./assets/Images/Cartes/cartes_back_carte_01.png";
import carte1 from "./assets/Images/Cartes/cartes_front_carte_01.png";
import carte2 from "./assets/Images/Cartes/cartes_front_carte_02.png";
import carte3 from "./assets/Images/Cartes/cartes_front_carte_03.png";
import carte4 from "./assets/Images/Cartes/cartes_front_carte_04.png";
import carte5 from "./assets/Images/Cartes/cartes_front_carte_05.png";

const itemData = [
  {
    img: carte1,
    title: "",
  },
  {
    img: carte3,
    title: "",
  },
  {
    img: carte,
    title: "",
  },
  {
    img: carte2,
    title: "",
  },
  {
    img: carte5,
    title: "",
  },
  {
    img: carte,
    title: "",
  },
  {
    img: carte,
    title: "",
  },
  {
    img: carte,
    title: "",
  },
  {
    img: carte4,
    title: "",
  },
];

const styles = {
  globalBoxContainer: {
    backgroundImage: `url(${bg})`,
    backgroundSize: "cover",
  },
  carteFondJauneBoxContainer: {
    backgroundImage: `url(${carteFondJaune})`,
    backgroundSize: "cover",
    width: "100%",
    justifyContent: "space-between",
  },
  carteFondRoseBoxContainer: {
    backgroundImage: `url(${carteFondRose})`,
    marginTop: "1em",
    marginBottom: "1em",
    padding: "1em",
    borderRadius: "5px",
    width: "100%",
  },
  boxContainer: {
    backgroundColor: "#212935",
    marginTop: "1em",
    marginBottom: "1em",
    padding: "1em",
    borderRadius: "5px",
  },
  primaryAccordionContainer: {
    backgroundImage: `url(${fontViolet})`,
    backgroundRepeatY: "no-repeat",
    backgroundRepeatX: "no-repeat",
    backgroundSize: "contain",
    backgroundColor: "#212935",
  },
  secondaryAccordionContainer: {
    backgroundImage: `url(${fondJaune})`,
    backgroundRepeatY: "no-repeat",
    backgroundRepeatX: "no-repeat",
    backgroundSize: "contain",
    backgroundColor: "#212935",
  },
  tertiaryAccordionContainer: {
    backgroundImage: `url(${fondVert})`,
    backgroundRepeatY: "no-repeat",
    backgroundRepeatX: "no-repeat",
    backgroundSize: "contain",
    backgroundColor: "#212935",
  },
};

function App() {
  return (
    <Box
      display="flex"
      flexDirection="row"
      justifyContent="center"
      alignItems="center"
      style={styles.globalBoxContainer}
    >
      <Box
        sx={{
          width: 800,
        }}
        display="flex"
        alignItems="center"
        justifyContent="center"
        flexDirection="column"
      >
        {/* title */}
        <h1>Ma collection</h1>
        <h2>Découvrez les métiers et les parcours de formations</h2>

        {/* Accordion */}
        <Accordion style={styles.primaryAccordionContainer}>
          <AccordionSummary
            expandIcon={<ExpandMoreIcon />}
            aria-controls="panel1a-content"
            id="panel1a-header"
          >
            <Typography>Parcours Ingénieurs Systèmes Numériques</Typography>
          </AccordionSummary>
          <AccordionDetails>
            <Accordion style={styles.secondaryAccordionContainer}>
              <AccordionSummary
                expandIcon={<ExpandMoreIcon />}
                aria-controls="panel1a-content"
                id="panel1a-header"
              >
                <Typography>Bac Général / Pro / Tech</Typography>
              </AccordionSummary>
              <AccordionDetails>
                <Accordion style={styles.tertiaryAccordionContainer}>
                  <AccordionSummary
                    expandIcon={<ExpandMoreIcon />}
                    aria-controls="panel1a-content"
                    id="panel1a-header"
                  >
                    <Typography>
                      Parcours Ingénieurs Systèmes Numériques
                    </Typography>
                  </AccordionSummary>
                  <AccordionDetails>
                    <Typography>
                      <Link href="#">
                        Bac Pro - Systèmes numériques option A sûreté et
                        sécurité des infrastructures, de l'habitat et du
                        tertiaire (SSIHT)
                      </Link>
                      <Link href="#">
                        Bac Pro - Systèmes numériques option B Audiovisuels,
                        réseau et équipement domestiques (ARED)
                      </Link>
                    </Typography>
                  </AccordionDetails>
                </Accordion>
              </AccordionDetails>
            </Accordion>
            <Accordion style={styles.secondaryAccordionContainer}>
              <AccordionSummary
                expandIcon={<ExpandMoreIcon />}
                aria-controls="panel1a-content"
                id="panel1a-header"
              >
                <Typography>BTS</Typography>
              </AccordionSummary>
              <AccordionDetails>
                <Accordion style={styles.tertiaryAccordionContainer}>
                  <AccordionSummary
                    expandIcon={<ExpandMoreIcon />}
                    aria-controls="panel1a-content"
                    id="panel1a-header"
                  >
                    <Typography>
                      Parcours Ingénieurs Systèmes Numériques
                    </Typography>
                  </AccordionSummary>
                  <AccordionDetails>
                    <Typography>
                      <Link href="#">
                        Bac Pro - Systèmes numériques option A sûreté et
                        sécurité des infrastructures, de l'habitat et du
                        tertiaire (SSIHT)
                      </Link>
                      <Link href="#">
                        Bac Pro - Systèmes numériques option B Audiovisuels,
                        réseau et équipement domestiques (ARED)
                      </Link>
                    </Typography>
                  </AccordionDetails>
                </Accordion>
              </AccordionDetails>
            </Accordion>
          </AccordionDetails>
        </Accordion>

        {/* Container radio button */}

        <Box display="flex" flexDirection="column" style={styles.boxContainer}>
          <p>
            Le secteur du bâtiment représente à lui seul: Le secteur du bâtiment
            représente à lui seul: Le secteur du bâtiment représente à lui seul:
            Le secteur du bâtiment représente à lui seul: Le secteur du bâtiment
            représente à lui seul:
          </p>
          <Box display="flex" flexDirection="row">
            <img src={perso1} style={{ maxWidth: "10%", height: "10%" }}></img>
            <FormControl>
              <RadioGroup
                aria-labelledby="demo-radio-buttons-group-label"
                defaultValue="female"
                name="radio-buttons-group"
                style={{
                  height: "80px",
                  overflow: "auto",
                  flexDirection: "row",
                  color: "white",
                }}
              >
                <FormControlLabel
                  value="female"
                  control={<Radio />}
                  label="27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre "
                />
                <FormControlLabel
                  value="male"
                  control={<Radio />}
                  label="27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre "
                />
                <FormControlLabel
                  value="other"
                  control={<Radio />}
                  label="27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre "
                />
                <FormControlLabel
                  value="other"
                  control={<Radio />}
                  label="27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre "
                />
              </RadioGroup>
            </FormControl>
          </Box>
        </Box>

        <Box
          display="flex"
          flexDirection="row"
          style={styles.carteFondJauneBoxContainer}
        >
          <img src={perso2} style={{ maxWidth: "10%", height: "10%" }}></img>
          <Box display="flex" flexDirection="column">
            <h3>Métiers découverts : 12</h3>
            <h4>Progression générale : 5%</h4>
          </Box>
        </Box>

        <Box
          display="flex"
          flexDirection="row"
          style={styles.carteFondRoseBoxContainer}
        >
          <p>Trier par numéro</p>
          <Checkbox icon={<FavoriteBorder />} checkedIcon={<Favorite />} />
        </Box>

        <Box sx={{ flexGrow: 1 }}>
          <ImageList sx={{ width: 500, height: 450 }} cols={3} rowHeight={264}>
            {itemData.map((item) => (
              <ImageListItem key={item.img}>
                <img
                  src={`${item.img}?w=164&h=164&fit=crop&auto=format`}
                  srcSet={`${item.img}?w=164&h=164&fit=crop&auto=format&dpr=2 2x`}
                  alt={item.title}
                  loading="lazy"
                />
              </ImageListItem>
            ))}
          </ImageList>
        </Box>
      </Box>
    </Box>
  );
}

export default App;
