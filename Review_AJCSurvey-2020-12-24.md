## Anna Julia Cooper Survey: Project Review


* Site publication: <https://alicer98.github.io/DIGIT-110-AJC-Survey/projectInfo.html>
* GitHub: <https://github.com/AliceR98/DIGIT-110-AJC-Survey>
* Developers: Alice Rong and Syed Naqvi
* Date of Evaluation: 2020-12-24
* Evaluated by: @ebeshero

### General
You took on certainly the most challenging project assignment in the class, to complete the encoding in TEI of Anna Julia Cooper's responses to the survey of Negro College Graduates from the year 1930. You planned your edition of this survey very carefully to display the survey form together with the handwritten responses, and you made decisions about how to code the XML and how to transform it to HTML so that you prioritized making the survey form *and* the responses be readable and searchable for information about historical people, places, and organizations. What you created here is very impressive, but the website surrounding the text edition isn't quite clear about everything you were doing and how it is related to the available resources on Anna Julia Cooper. 

 I would like you both to consider your work as something more than a required assignment for a class (though of course that is what is was). But it is now a real project that faces the public, and more than just something to be appreciated by your peers and professors at Penn State Behrend. So my comments here are about improving the site’s accessibility to audiences who may find your site on the public web while learning more about Anna Julia Cooper (AJC). Your site might also become linked from other sites about AJC and African American leaders. In that light, to make your work a little more professional, I suggest a few modifications to the website framework *around* your edition.

### Digital Document Curation
You succeeded brilliantly with your XSLT work in producing a web edition of the survey! The design and data modeling you did is superb, and you have succeeded brilliantly in making *both* a reading view, *and* an information resource, helping to highlight where we can find important historical info in AJC's survey! 

What will *likely* happen is that over time people visiting the site (including you yourselves) will find you want to correct the transcriptions here and there. Small corrections should be easy for you to make, because of your clear and precise TEI encoding of each survey question. I would advise making a statement on the main page (your index.html) to *invite* people to help with corrections to your transcription and to submit those to the project team, or to one of you who is willing to take long-term responsibility for this project site. Probably the easiest way to invite people to contribute corrections would be to direct them to your Issues page (linking to it at <https://github.com/AliceR98/DIGIT-110-AJC-Survey/issues> and noting they will just have to set up a free GitHub account to contribute updates. More sophisticated GitHub users will be able to contribute corrections directly to the TEI using pull requests, which are designed to be easy to review: They can clone your repo, make changes directly to the TEI, and submit them to you to review using a pull request. I can show you how this works if you like; let me know and we can do a sample one together online. You would be notified as long as you're following your GitHub repositories of anyone contributing proposed corrections.

You want to think of this site, in a way, as a kind of organic node that can change and improve over time if people get involved. That is kind of the way digital editions work: they are not simply "finished," because they are typically open to new development as people get involved. I hope you will invite people to get involved and help make the project even better!

### The Website that frames the edition
The website that frames the edition is not nearly so well developed as the edition itself. That is to be expected: you put lots of your energy into preparing the edition, and it was probably not clear what the website around it is supposed to be doing. Think of the website as a sort of welcome and orientation space for people of all kinds: researchers of African American history, students around the world learning about history or about working with manuscripts. Your main page can welcome these readers. Right now your main page gives us a picture of AJC and two sentences: 
```
Welcome to this site on Anna Julia Cooper! Here you will find 
a transcript of the Negro College Graduates Survey along with Cooper's responses to its questions.
```
This is a start, but...what was this survey all about? Can you find out more about it? (Sure you can. I provided some resources on this back when we started working on this as a TEI assignment. You could: 
* Read [a biographical sketch of Anna Julia Cooper](https://plato.stanford.edu/entries/anna-julia-cooper/#BioSke) to put the survey in context.
* Read [about Cooper’s essay, My Racial Philosophy](https://plato.stanford.edu/entries/anna-julia-cooper/#OthSelEssWriRumBeyVoi) and how she drafted it in response to this survey.

Your project should really be linking to these resources (and others you may find) to help readers understand the significane of what they are seeing. And while you provide a view of the source document, you should also post a direct link to it as posted in the Digital Howard collection at Howard University: https://dh.howard.edu/cgi/viewcontent.cgi?article=1001&context=ajc_bio 

As you revisit your main page, think about what matters for readers to understand about this survey. It was kind of a big deal to be surveying African American College Graduates in the year 1930, wasn't it? That was a survey designed to learn more about the experiences of the most educated black leaders in the US at that moment. It may help to learn a little more about what was happening to African Americans in 1930, during the Harlem Renaissance and during a time when they faced intense racial discrimination in the US. Anna Julia Cooper’s responses to this survey, *and* the very survey itself are both important historical documents. Your main page can help to put this into perspective in a paragraph or two: Talk to us a little about what these documents have to teach us, and provide us some links to helpful resources for more information on this survey on and on AJC. Just writing up those paragraphs will go a long way to professionalizing your project and making it something easy for people to share and learn from as an educational resource on the public web. 

You may also want to tell the reader something about “What you can find here” to orient them to the table they're first going to see when they visit your Texts page. You should probably rename that menu item, so it's not just 
“Texts” but “Survey Text”.

Somewhere on the main page, you should also explain about how you got involved with the AJC materials and make a connection to Dr. Shirley Moody-Turner at Penn State, University Park. It might help to include a little blurb something like what i used in my first TEI assignment working with the AJC materials for our class: 
```
We worked with photofacsimiles of manuscripts digitally curated by Dr. Shirley Moody-Turner
from Penn State University for the Digital Howard’s Anna Julia Cooper collection. 
```
Your team was basically *continuing* work with this material that Dr. Moody-Turner and her students were curating as image files. And you did some serious scholarly work as editors of this material, so that it is text-searchable and more readable than before in a web-ready format. Don’t sell yourselves short—that is serious work that you have contributed to the Worldwide Web!

### Condensing / Eliminating Unnecessary Pages 
It is not clear what the difference is between the "Main" page, the "About" page, the "Project Information" page, and the "Source Code" page. You could really condense those into just two pages: ("Main" and "Project Information"). Think of the "Main" page as a place where you introduce AJC and the survey. And maybe think of the "Project Information" page as a space where you discuss your work on the project *and* link to relevant examples of your source code. It may help to think of this website as having two kinds of audiences:
1) history people (coming to study AJC who know nothing about code)
2) coding people (who want to learn how you applied the TEI and worked with XSLT to build your digital edition)

Your primary audience are people who don't understand code. That is okay: write to them on the main page. The coders will go the Project Information page where you can discuss your coding methods in detail. 

One of the best examples I know for writing a good "coding methodology" page was written up by some of my former students on the Emily Dickinson project team: <http://dickinson.newtfire.org/methodology.html>
Now, that project went on over two semesters and took on an afterlife of its own (one of the student developers, Nicole Lottig, has since graduated but still works on this project and wants to expand it to cover all of Dickinson’s poetry!) I mention this because, you wouldn't have *nearly* this much to write, but you could write something in a similar style to discuss how you worked out your strategies for coding, how you designed your schema (linking to your code in your GitHub repo), what you were doing with XSLT to structure the reading view, how you worked with CSS styling to help make it easy to tell apart AJC’s writing from the survey yet make it easy to read, etc.) I know this takes time and you were short on that at the end of the semester, but you can add more now—as an investment in sharing this project again down the road perhaps at a conference or at our campus DIGIT fest (coming up this spring). 


### Closing Comments
You both did some impressive work on this project, and it really is more than just a semester accomplishment. The AJC projects from our class are part of a network of new resources available on a path-breaking African American leader, and your website should be clear about your parts in building that network. Congratulations on your work in bringing this project to life!